{{ config(
    alias='touches', 
    materialized='incremental',
    incremental_strategy='merge',
    schema='mid_metadata',
    unique_key = ['touch_id'],
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}

SELECT
  glue_catalog.{{ ref('staging_metadata_metadata') }}.touch_id,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.touch_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.touch_start_date,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.campaign_finance_year,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.campaign_number,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.campaign_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_id,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_program_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.initiative_description,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_channel_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.cell_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.variant_name,
  glue_catalog.{{ ref('staging_metadata_metadata') }}.keycode_10th_position,
  CASE
      WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
          AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_name LIKE '%CS%'
          THEN 'Cross-Sell'
      WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
          AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_name LIKE '%Non%'
          THEN 'BroadMarket'
      WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
          AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_name LIKE '%Member%'
          THEN 'Acquisition'
      WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
          AND UPPER(glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name) = UPPER('GIWL Merkury Trigger')
          THEN 'Acquisition'
      ELSE NULL
  END                                                   AS tactic_type,
  CASE
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name = 'MLTA Member'
      THEN 'MLTA Acquisition'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name = 'GIWL Member'
      THEN 'GIWL Acquisition'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name = 'Direct Mail Member Term'
      THEN 'Term Acquisition'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name = 'Direct Mail Member Term - Random'
      THEN 'Term Acquisition'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND UPPER(glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name) = UPPER('Direct Mail Member Term - Remark')
      THEN 'Term Acquisition'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name LIKE '%CS%'
      THEN 'Cross-Sell'
    WHEN glue_catalog.{{ ref('staging_metadata_metadata') }}.marketing_subchannel_name = 'Mail'
      AND UPPER(glue_catalog.{{ ref('staging_metadata_metadata') }}.tactic_type_name) = UPPER('GIWL Merkury Trigger')
      THEN 'GIWL Acquisition'
    ELSE NULL
  END                                                   AS tactic_type_group,
  LOWER(glue_catalog.{{ ref('staging_dsse_product_mapping') }}.product_group) AS product_group,
  current_date() AS last_refreshed_at
FROM glue_catalog.{{ ref('staging_metadata_metadata') }}
    /*
    Allow non-expired product group rollups to apply to promotion metadata records up to 1 year
     (365 days) into the future (to account for tactics we plan out at the beginning of the year).
    */
LEFT JOIN glue_catalog.{{ ref('staging_dsse_product_mapping') }}
  ON LOWER(glue_catalog.{{ ref('staging_metadata_metadata' ) }}.tactic_type_name) =
    LOWER(glue_catalog.{{ ref('staging_dsse_product_mapping') }}.tactic_name)
  AND glue_catalog.{{ ref('staging_metadata_metadata' ) }}.touch_start_date
    BETWEEN glue_catalog.{{ ref('staging_dsse_product_mapping') }}.effective_date
    AND COALESCE(glue_catalog.{{ ref('staging_dsse_product_mapping') }}.expiration_date, CURRENT_DATE + 365)

WHERE glue_catalog.{{ ref('staging_metadata_metadata' ) }}.touch_id IS NOT NULL

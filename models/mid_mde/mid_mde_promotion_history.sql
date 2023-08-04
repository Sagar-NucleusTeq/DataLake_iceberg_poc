{{ config(
    alias='promotion_history', 
    materialized='incremental',
    incremental_strategy='merge',
    schema='mid_mde',
    unique_key = ['touch_id'],
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}


SELECT
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.touch_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.plan_code,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.broadlog_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.individual_key,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.address_key,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.finder_number,
  CASE
    WHEN glue_catalog.{{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Mail'
      THEN glue_catalog.{{ ref('staging_mde_promotion_history') }}.keycode
    WHEN glue_catalog.{{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Email'
      THEN glue_catalog.{{ ref('staging_mde_promotion_history') }}.digital_campaign_code
    END                                                                         AS keycode,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.serial_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.status,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.state AS recipient_state,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.city AS recipient_city,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.zip_code AS recipient_zip_code,
  CASE
    WHEN glue_catalog.{{ ref('staging_mde_promotion_history') }}.depromotion_date IS NULL
      THEN FALSE
    ELSE TRUE
  END                                                                           AS is_depromoted,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.depromotion_date,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.age AS promotion_age,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.package_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.tactic_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.cell_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.creative_id,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.vendor_code,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.household_milliman_bucket_score    AS promotion_household_milliman_bucket_score,
  glue_catalog.{{ ref('staging_mde_promotion_history') }}.milliman_bucket_score              AS promotion_milliman_bucket_score,
  CASE
    WHEN glue_catalog.{{ ref('staging_mde_promotion_history') }}.finder_number IS NULL
    -- implies a non-DM record since DM requires a finder number
      THEN NULL
    WHEN glue_catalog.{{ ref('mid_metadata_touches') }}.product_group = 'term'
      THEN CAST(glue_catalog.{{ ref('staging_mde_promotion_history') }}.model_member_term_mille AS INTEGER)
    WHEN glue_catalog.{{ ref('mid_metadata_touches') }}.product_group = 'accident'
      THEN CAST(glue_catalog.{{ ref('staging_mde_promotion_history') }}.model_member_mlta_mille AS INTEGER)
    WHEN glue_catalog.{{ ref('mid_metadata_touches') }}.product_group = 'giwl'
      THEN CAST(glue_catalog.{{ ref('staging_mde_promotion_history') }}.model_member_giwl_mille AS INTEGER)
    ELSE NULL
  END  AS promotion_mille
FROM glue_catalog.{{ ref('staging_mde_promotion_history') }}
LEFT JOIN glue_catalog.{{ ref('mid_metadata_touches') }}
  ON glue_catalog.{{ ref('staging_mde_promotion_history') }}.touch_id = glue_catalog.{{ ref('mid_metadata_touches') }}.touch_id

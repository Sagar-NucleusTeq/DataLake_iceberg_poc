{{ config(
    alias='promotion_history', 
    materialized='incremental',
    incremental_strategy='insert_overwrite ',
    schema='mid_mde',
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}


SELECT
  {{ ref('staging_mde_promotion_history') }}.touch_id,
  {{ ref('staging_mde_promotion_history') }}.plan_code,
  {{ ref('staging_mde_promotion_history') }}.broadlog_id,
  {{ ref('staging_mde_promotion_history') }}.individual_key,
  {{ ref('staging_mde_promotion_history') }}.address_key,
  {{ ref('staging_mde_promotion_history') }}.finder_number,
  CASE
    WHEN {{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Mail'
      THEN {{ ref('staging_mde_promotion_history') }}.keycode
    WHEN {{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Email'
      THEN {{ ref('staging_mde_promotion_history') }}.digital_campaign_code
    END                                                                         AS keycode,
  {{ ref('staging_mde_promotion_history') }}.serial_id,
  {{ ref('staging_mde_promotion_history') }}.status,
  {{ ref('staging_mde_promotion_history') }}.state                              AS recipient_state,
  {{ ref('staging_mde_promotion_history') }}.city                               AS recipient_city,
  {{ ref('staging_mde_promotion_history') }}.zip_code                           AS recipient_zip_code,
  CASE
    WHEN {{ ref('staging_mde_promotion_history') }}.depromotion_date IS NULL
      THEN FALSE
    ELSE TRUE
  END                                                                           AS is_depromoted,
  {{ ref('staging_mde_promotion_history') }}.depromotion_date,
  {{ ref('staging_mde_promotion_history') }}.age                                AS promotion_age,
  {{ ref('staging_mde_promotion_history') }}.package_id,
  {{ ref('staging_mde_promotion_history') }}.tactic_id,
  {{ ref('staging_mde_promotion_history') }}.cell_id,
  {{ ref('staging_mde_promotion_history') }}.creative_id,
  {{ ref('staging_mde_promotion_history') }}.vendor_code,
  {{ ref('staging_mde_promotion_history') }}.household_milliman_bucket_score    AS promotion_household_milliman_bucket_score,
  {{ ref('staging_mde_promotion_history') }}.milliman_bucket_score              AS promotion_milliman_bucket_score,
  CASE
    WHEN {{ ref('staging_mde_promotion_history') }}.finder_number IS NULL
    -- implies a non-DM record since DM requires a finder number
      THEN NULL
    WHEN {{ ref('mid_metadata_touches') }}.product_group = 'term'
      THEN CAST({{ ref('staging_mde_promotion_history') }}.model_member_term_mille AS INT)
    WHEN {{ ref('mid_metadata_touches') }}.product_group = 'accident'
      THEN CAST({{ ref('staging_mde_promotion_history') }}.model_member_mlta_mille AS INT)
    WHEN {{ ref('mid_metadata_touches') }}.product_group = 'giwl'
      THEN CAST({{ ref('staging_mde_promotion_history') }}.model_member_giwl_mille AS INT)
    ELSE NULL
  END                                                                           AS promotion_mille,
  {{ ref('staging_mde_promotion_history') }}.gender                             AS promotion_gender,
  {{ ref('staging_mde_promotion_history') }}.event_date                         AS broadlog_created_date,
  {{ ref('mid_metadata_touches') }}.touch_start_date - 30                       AS touch_start_date_30days_early,
  {{ ref('mid_metadata_touches') }}.touch_start_date + 90                       AS touch_start_date_90days_out,
  {{ ref('mid_metadata_touches') }}.campaign_finance_year                       AS campaign_year,
  {{ ref('mid_metadata_touches') }}.campaign_number                             AS campaign_number,
  CASE
    WHEN {{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Mail'
      THEN {{ ref('mid_metadata_touches') }}.campaign_name
    WHEN   {{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Email'
      THEN CAST( {{ ref('mid_metadata_touches') }}.campaign_finance_year AS VARCHAR(4)) || ' - ' ||
           {{ ref('mid_metadata_touches') }}.campaign_name
    ELSE NULL
  END                                                                           AS campaign,
  {{ ref('mid_metadata_touches') }}.marketing_program_name,
  {{ ref('mid_metadata_touches') }}.campaign_name,
  {{ ref('mid_metadata_touches') }}.marketing_channel_name,
  {{ ref('mid_metadata_touches') }}.marketing_subchannel_name,
  {{ ref('mid_metadata_touches') }}.initiative_description,
  {{ ref('mid_metadata_touches') }}.touch_start_date,
  {{ ref('mid_metadata_touches') }}.touch_start_date                            AS target_send_date,
  -- Target delivery date for mail is defined as "28 days after target send date"
  -- If it hasn't arrived by then, the next campaign has already started and there is a problem
  CASE
    WHEN {{ ref('mid_metadata_touches') }}.marketing_subchannel_name = 'Mail'
      THEN CAST(({{ ref('mid_metadata_touches') }}.touch_start_date + 28) AS DATE)
    ELSE NULL
  END                                                                           AS target_delivery_deadline,
  {{ ref('staging_mde_promotion_history') }}.delivery_contact_date,
  {{ ref('mid_metadata_touches') }}.tactic_name,
  {{ ref('mid_metadata_touches') }}.tactic_type_group,
  {{ ref('mid_metadata_touches') }}.tactic_type,
  {{ ref('mid_metadata_touches') }}.product_group,
  {{ ref('mid_metadata_touches') }}.cell_name,
  {{ ref('mid_metadata_touches') }}.variant_name,
  {{ ref('mid_metadata_touches') }}.touch_name,
  {{ ref('mid_metadata_touches') }}.marketing_program_name                      AS marketing_program,
  CASE
    WHEN {{ ref('mid_metadata_touches') }}.keycode_10th_position = 'A'
      THEN 'CONTROL'
    WHEN {{ ref('mid_metadata_touches') }}.keycode_10th_position IS NULL
      THEN NULL
    ELSE 'TEST'
  END                                                                           AS test_role,
  current_date()  AS last_refreshed_at
FROM glue_catalog.{{ ref('staging_mde_promotion_history') }}
LEFT JOIN glue_catalog.{{ ref('mid_metadata_touches') }}
  ON glue_catalog.{{ ref('staging_mde_promotion_history') }}.touch_id = glue_catalog.{{ ref('mid_metadata_touches') }}.touch_id
{{ config(
    alias='metadata', 
    materialized='incremental',
    incremental_strategy='merge',
    schema='staging_metadata',
    unique_key = ['touch_id'],
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}

WITH max_record_timestamp AS (

    SELECT
      MAX(load_timestamp) AS last_loaded_at
    FROM {{ source('metadata', 'metadata') }}

)

SELECT
  CAST({{ source('metadata', 'metadata') }}.touch_id AS INT)      AS touch_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'touch_name') }} AS touch_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'touch_description') }} AS touch_description,
  CAST({{ source('metadata', 'metadata') }}.touch_start_date AS DATE)    AS touch_start_date,
  CAST({{ source('metadata', 'metadata') }}.touch_end_date AS DATE)       AS touch_end_date,
  CAST({{ source('metadata', 'metadata') }}.touch_reply_by_date AS DATE)  AS touch_reply_by_date,
  CAST({{ source('metadata', 'metadata') }}.offer_id AS INT) AS offer_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'offer_name') }} AS offer_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'keycode_type') }} AS keycode_type,
  CAST({{ source('metadata', 'metadata') }}.sub_channel_id AS INT)       AS marketing_subchannel_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'sub_channel_name') }} AS marketing_subchannel_name,
  CAST({{ source('metadata', 'metadata') }}.marketing_channel_id AS INT) AS marketing_channel_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'marketing_channel_name') }} AS marketing_channel_name,
  CAST({{ source('metadata', 'metadata') }}.creative_id AS INT)          AS creative_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'creative_name') }} AS creative_name,
  CAST({{ source('metadata', 'metadata') }}.variant_id AS INT)          AS variant_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'variant_name') }} AS variant_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'variant_desc') }} AS variant_description,
  {{ cleanse_text_field(source('metadata', 'metadata'),'keycode_10th_position_byte') }} AS keycode_10th_position,
  CAST({{ source('metadata', 'metadata') }}.variant_population_split AS INT) AS variant_population_split,
  CAST({{ source('metadata', 'metadata') }}.cell_id AS INT)              AS cell_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'cell_name') }} AS cell_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'cell_description') }} AS cell_description,
  CAST({{ source('metadata', 'metadata') }}.selection_group_id AS INT)   AS selection_group_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'selection_group_name') }}  AS selection_group_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'selection_parameters_name') }} AS selection_parameters_name,
  CAST({{ source('metadata', 'metadata') }}.tactic_id AS INT)            AS tactic_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'tactic_name') }} AS tactic_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'tactic_description') }} AS tactic_description,
  CAST({{ source('metadata', 'metadata') }}.tactic_start_date AS DATE)    AS tactic_start_date,
  {{ cleanse_text_field(source('metadata', 'metadata'),'tactic_type_name') }} AS tactic_type_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'cross_sell_keycode_value') }} AS cross_sell_keycode_value,
  CAST({{ source('metadata', 'metadata') }}.campaign_id AS INT)          AS campaign_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'campaign_name') }} AS campaign_name,
  CAST({{ cleanse_text_field(source('metadata', 'metadata'),'campaign_number') }} AS INT) AS campaign_number,
  {{ cleanse_text_field(source('metadata', 'metadata'),'campaign_description') }} AS campaign_description,
  CAST({{ source('metadata', 'metadata') }}.campaign_start_date AS DATE)  AS campaign_start_date,
  CAST({{ source('metadata', 'metadata') }}.campaign_end_date AS DATE)    AS campaign_end_date,
  CAST({{ source('metadata', 'metadata') }}.finance_year AS INT)         AS campaign_finance_year,
  CAST({{ source('metadata', 'metadata') }}.finance_month AS INT)        AS campaign_finance_month,
  {{ cleanse_text_field(source('metadata', 'metadata'),'campaign_keycode_camp_number') }} AS campaign_keycode_campaign_number,
  CAST({{ source('metadata', 'metadata') }}.initiative_id AS INT)        AS initiative_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'initiative_description') }} AS initiative_description,
  CAST({{ source('metadata', 'metadata') }}.initiative_start_date AS DATE) AS initiative_start_date,
  CAST({{ source('metadata', 'metadata') }}.initiative_end_date AS DATE)  AS initiative_end_date,
  CAST({{ source('metadata', 'metadata') }}.marketing_program_id AS INT) AS marketing_program_id,
  {{ cleanse_text_field(source('metadata', 'metadata'),'marketing_program_name') }} AS marketing_program_name,
  {{ cleanse_text_field(source('metadata', 'metadata'),'marketing_program_description') }} AS marketing_program_description,
  {{ cleanse_text_field(source('metadata', 'metadata'),'file_name') }} AS file_name,
  CAST(metadata.load_timestamp AS TIMESTAMP) AS loaded_at,
  CURRENT_TIMESTAMP() AS last_refreshed_at
                    

FROM {{ source('metadata', 'metadata') }}
INNER JOIN max_record_timestamp
  ON {{ source('metadata', 'metadata') }}.load_timestamp = max_record_timestamp.last_loaded_at
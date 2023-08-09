{{ config(
    alias='operation_codes', 
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    schema='staging_iv',
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}

WITH max_record_timestamp AS (

    SELECT
      operation_code,
      MAX(load_timestamp) AS last_loaded_at
    FROM  glue_catalog.{{ source('informed_visibility', 'operationcodes') }}
    GROUP BY 1

)


SELECT
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'sort_order') }} AS sort_order,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'machine_type') }} AS machine_type,
  LPAD({{ cleanse_text_field(source('informed_visibility','operationcodes'),'operation_code') }}, 3, '0') AS operation_code,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'equipment_description') }} AS equipment_description,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'stop_the_clock_scan') }} AS stop_the_clock_scan,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'clearance_cutoff_time') }} AS clearance_cutoff_time,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'container') }} AS container,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'handling_unit') }} AS handling_unit,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'bundle') }} AS bundle,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'piece') }} AS piece,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'piece_mail_type') }} AS piece_mail_type,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'mail_level') }} AS mail_level,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'mail_phase') }} AS mail_phase,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'process_description') }} AS process_description,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'available_date') }}
  -- includes dates and words, i.e. "Active", "Available_Date", "5/15/2020"
                                                                        AS available_date_text,
  {{ cleanse_text_field(source('informed_visibility','operationcodes'),'file_name') }} AS file_name,
  CAST({{ source('informed_visibility', 'operationcodes') }}.load_timestamp AS TIMESTAMP) AS loaded_at,
  CURRENT_TIMESTAMP()                                                             AS last_refreshed_at
FROM {{ source('informed_visibility', 'operationcodes') }}
-- JOIN max_record_timestamp
--   ON  glue_catalog.{{ source('informed_visibility', 'operationcodes') }}.load_timestamp = max_record_timestamp.last_loaded_at
--     AND  glue_catalog.{{ source('informed_visibility', 'operationcodes') }}.operation_code = max_record_timestamp.operation_code

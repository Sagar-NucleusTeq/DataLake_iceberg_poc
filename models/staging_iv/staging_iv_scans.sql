{{ config(
    alias='scans', 
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

SELECT
  {{ dbt_utils.surrogate_key(['imdb_tracking_code','scanned_at','file_name']) }}      AS usps_scan_key,
  {{ cleanse_text_field(source('informed_visibility','data'),'facility_id_zip') }}    AS facility_id_zip,
  {{ cleanse_text_field(source('informed_visibility','data'),'operation_code') }}     AS operation_code,
  {{ cleanse_text_field(source('informed_visibility','data'),'routing_code') }}       AS routing_code,
  {{ cleanse_text_field(source('informed_visibility','data'),'imdb_tracking_code') }} AS imdb_tracking_code,
  CAST({{ source('informed_visibility', 'data') }}.scanned_at AS TIMESTAMP) AS scanned_at,
  CAST({{ source('informed_visibility', 'data') }}.scanned_at AS DATE) AS scanned_at_date,
  SUBSTRING({{ cleanse_text_field(source('informed_visibility','data'),'imdb_tracking_code') }}, 1, 2)  AS barcode_identifier_code,
  SUBSTRING({{ cleanse_text_field(source('informed_visibility','data'),'imdb_tracking_code') }}, 3, 3)  AS service_type_identifier_code,
  SUBSTRING({{ cleanse_text_field(source('informed_visibility','data'),'imdb_tracking_code') }}, 6, 6)  AS mailer_id,
  SUBSTRING({{ cleanse_text_field(source('informed_visibility','data'),'imdb_tracking_code') }}, 12, 9) AS serial_number,
  {{ cleanse_text_field(source('informed_visibility','data'),'file_name') }}          AS file_name,
  CURRENT_TIMESTAMP()                                                                           AS last_refreshed_at
FROM {{ source('informed_visibility', 'data') }}
{% if is_incremental() %}
  -- if incremental, evaluate data with scan dates within the last 7 days (gives IV time to give us ALL of the data from a prior day)
  -- not using load_timestamp because that may not be available in the future when switching to SCD loads
WHERE CAST({{ source('informed_visibility', 'data') }}.scanned_at AS TIMESTAMP) >= CAST(CURRENT_DATE - INTERVAL '7' DAY AS TIMESTAMP)
{% else %}
WHERE
  -- Otherwise, pull all data from valid range.  Used if --full-refresh flag is attached to run
  CAST({{ source('informed_visibility', 'data') }}.scanned_at AS DATE) >= DATE '2020-11-28'
  -- This is 30 days before the 2021 C1 drop date, to grab any related IV records.
{% endif %}

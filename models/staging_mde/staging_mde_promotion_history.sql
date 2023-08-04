{{ config(
    alias='promotion_history', 
    materialized='incremental',
    schema='staging_mde',
    incremental_strategy='merge',
    unique_key=['broadlog_id'],
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }}    


SELECT
  CAST(indiv_key AS INTEGER) AS individual_key,
  {{ cleanse_text_field(source('mde','promotion_history'),'address_key') }} AS address_key,
  {{ cleanse_text_field(source('mde','promotion_history'),'email_addr') }} AS email_addr,
  CAST(broadlog_id AS BIGINT) AS broadlog_id,
  DATE({{ source('mde', 'promotion_history') }}.event_date) AS event_date
  
FROM {{source('mde', 'promotion_history') }}

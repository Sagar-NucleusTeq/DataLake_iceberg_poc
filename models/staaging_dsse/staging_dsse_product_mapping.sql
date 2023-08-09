{{ config(
    alias='staging_dsse_product_mapping', 
    materialized='incremental',
    schema='staging_dsse',
    incremental_strategy='insert_overwrite',
    file_format='iceberg',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
) }} 


SELECT
  glue_catalog.{{ ref('product_mapping_history') }}.tactic_name,
  glue_catalog.{{ ref('product_mapping_history') }}.product_group,
  glue_catalog.{{ ref('product_mapping_history') }}.effective_date,
  glue_catalog.{{ ref('product_mapping_history') }}.expiration_date,
  glue_catalog.{{ ref('product_mapping_history') }}.dbt_valid_from AS loaded_at,
  current_timestamp() AS last_refreshed_at
FROM glue_catalog.{{ ref('product_mapping_history') }}
WHERE dbt_valid_to IS NULL

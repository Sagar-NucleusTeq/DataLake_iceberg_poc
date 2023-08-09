{% snapshot product_mapping_history %}
{{
  config(
    target_database='staging_dsse',
    target_schema='staging_dsse',
    file_format='iceberg',
    iceberg_expire_snapshots='False',
    unique_key= " tactic_name || '-' || effective_date ",
    strategy='timestamp',
    updated_at='expiration_date',
    table_properties={
    'write.target-file-size-bytes': '268435456',
    'format-version': '2'
    }
  )
}}

SELECT
  {{ cleanse_text_field('product_mapping', 'tactic_name') }}    AS tactic_name,
  {{ cleanse_text_field('product_mapping', 'product_group') }}  AS product_group,
  to_date({{ ref('product_mapping') }}.effective_date ,'mm/dd/yyyy') AS effective_date,
  to_date({{ ref('product_mapping') }}.expiration_date , 'mm/dd/yyyy') AS expiration_date
FROM {{ ref('product_mapping') }}

{% endsnapshot %}

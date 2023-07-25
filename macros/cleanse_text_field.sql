{% macro cleanse_text_field(model_name,column_name) %}

CAST(CASE
  WHEN TRIM({{ column_name }}) = '"' THEN NULL
  WHEN TRIM({{ column_name }}) = ',' THEN NULL
  WHEN TRIM({{ column_name }}) = ';' THEN NULL
  WHEN TRIM({{ column_name }}) = '.' THEN NULL
  ELSE NULLIF(TRIM({{ column_name }}), '')
END AS string) 

{% endmacro %}
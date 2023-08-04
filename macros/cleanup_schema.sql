{% macro drop_schema(schema) %}
  {% set query %}
      drop database {{schema}} cascade
  {% endset %}
  {% do run_query(query) %}
{% endmacro %}
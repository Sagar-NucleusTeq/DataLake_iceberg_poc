-- macros.sql

{% macro get_current_timestamp() %}
  select current_timestamp()
{% endmacro %}

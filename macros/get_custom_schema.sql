

{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set profile_name = target.name -%}
    {%- set default_schema = target.schema -%}

    {%- if profile_name == 'prod' -%}

        {%- if custom_schema_name is none -%}

            {{default_schema}}

        {%- else -%}

            {{custom_schema_name}}

        {%- endif -%}

    {%- else -%}

        {%- if custom_schema_name is none -%}

            {{default_schema}}

        {%- else -%}

            {{custom_schema_name}}

        {%- endif -%}

    {%- endif -%}
{%- endmacro %}
{% snapshot ss_demo %}

    {{

    config(

        strategy='timestamp',

        target_schema='staging_fast_priyanka',

        unique_key='policynumber',

        table_type='hudi',

        updated_at='updated'

    )        

    }}

 

select * from {{ source('fast', 'policy_search') }}

 

{% endsnapshot %}
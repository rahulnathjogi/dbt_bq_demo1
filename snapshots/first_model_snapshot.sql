{% snapshot first_model_snapshot %}
    {{
        config(
          target_database='skilled-display-380813',
          target_schema='snapshots',
          unique_key='id',

          strategy='timestamp',
          updated_at='updated_at',
        )
    }}

    -- Pro-Tip: Use sources in snapshots!
    select * from {{ ref('id_country_snapshot') }}

{% endsnapshot %}
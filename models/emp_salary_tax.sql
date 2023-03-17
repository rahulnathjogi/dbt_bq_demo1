{{ config(materialized='view') }}

with final as (
    select *, 
    {{ calculate_tax('salary') }} as tax_amount , 
    {{ high_low_salary('salary') }} as high_low_salary
    from `skilled-display-380813.dbt_demo_bq.emp`
)

select *
from final



{{ config(materialized='view') }}

with final as (
    select *
    from {{ ref('emp_salary_tax') }}
)

select tax_amount , high_low_salary
from final



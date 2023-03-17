{{ config(materialized='view') }}

with final as (
    select tax_amount , high_low_salary
    from {{ ref('emp_salary_tax') }}
)

select *
from final



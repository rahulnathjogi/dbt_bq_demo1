{{ config(materialized='view') }}

with final as (
    select *
    from {{ ref('emp_salary_tax') }}
    where SALARY>10000
)

select 
EMPLOYEE_ID,
FIRST_NAME || " " || LAST_NAME
from final



{{ config(materialized='table') }}

with final as (
    select *
    from {{ ref('emp_salary_tax') }}
    where SALARY<=10000
)

select 
EMPLOYEE_ID,
concat(FIRST_NAME, ' ', LAST_NAME) as full_name
from final



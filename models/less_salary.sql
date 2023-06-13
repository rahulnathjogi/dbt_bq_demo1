--employee whose salary less than or equal to 10000 considered as low salaried employee

with temp as (
        select * from {{ source('dbt_demo_bq', 'emp') }}
        where SALARY<10000
)
select 
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    DEPARTMENT_ID
from temp
       
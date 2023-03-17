

{{ config(materialized='view') }}

with emp_dbt as (

SELECT * FROM `skilled-display-380813.dbt_demo_bq.emp`

)

select *
from emp_dbt

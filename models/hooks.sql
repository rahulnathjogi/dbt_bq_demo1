{{ config(
    pre_hook='create table skilled-display-380813.dbt_demo_bq.highsal as select * from `skilled-display-380813.dbt_demo_bq.emp_salary_tax` where SALARY>=10000',
    post_hook='create table skilled-display-380813.dbt_demo_bq.lowsal as select * from `skilled-display-380813.dbt_demo_bq.emp_salary_tax` where SALARY<10000'
) }}


select * from {{ ref('stages_emp') }}
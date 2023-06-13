-- {{ config(
--     pre_hook='create table skilled-display-380813.dbt_demo_bq.audit_started as select * from skilled-display-380813.dbt_demo_bq.audit_demo where _status="started"',
--     post_hook='create table skilled-display-380813.dbt_demo_bq.audit_ended as select * from skilled-display-380813.dbt_demo_bq.audit_demo where _status="ended"',
--     materialized='view',
--     database='skilled-display-380813'
-- ) }}

with emp_dbt as (
SELECT * FROM skilled-display-380813.dbt_demo_bq.emp
)

select *
from emp_dbt



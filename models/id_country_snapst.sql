{{ config(materialized='table', alias='id_country_snapst' ) }}

with source_data as (

    select 1 as id, 'CA' as state, TIMESTAMP('2020-01-01 00:00:00.000') as updated_at
    union all
    select null as id, 'CT' as state, TIMESTAMP('2020-01-01 00:00:00.000') as updated_at
    union all
    select 3 as id, 'MH' as state, TIMESTAMP('2020-02-01 00:00:00.000') as updated_at

)

select *
from source_data
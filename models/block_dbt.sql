{{ config(materialized='table') }}


with final as (
SELECT * FROM bigquery-public-data.crypto_bitcoin.blocks
)

select *
from final

select  *
from {{ source('country_codes_sources', 'country_codes') }} 
select  *
from {{ source('emp_source', 'emp') }} 
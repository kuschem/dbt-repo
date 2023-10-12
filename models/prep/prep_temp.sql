with extracted_temp as (
    SELECT * 
    FROM {{ref('staging_weather')}}
)
select *
from extracted_temp
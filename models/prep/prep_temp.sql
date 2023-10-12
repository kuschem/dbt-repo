with extracted_temp as (
    SELECT * 
        ----extra column creation---
    from {{ref('staging_weather')}}
)
select *
from extracted_temp

with monthly_avg as (
    select 
        month,
        avg(avgtemp_c) as monthly_avg_temp
    from {{ref('prep_temp')}}
    group by month
)
select *
from monthly_avg;
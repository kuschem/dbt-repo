with extracted_temp as (
    SELECT *
    FROM {{ref('staging_weather')}}
),
add_dateparts as (
        select  *,
                date_part('year', date) AS year,
                date_part('month', date) AS month,
                date_part('week', date) AS weekday,
                date_part('day', date) AS day_num
        from extracted_temp
)
SELECT *
FROM add_dateparts
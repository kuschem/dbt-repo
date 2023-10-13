with extracted_temp as (
    SELECT *
    FROM {{ref('staging_weather')}}
),
add_prep_data as (
        select  date,
                date_part('year', date) AS year,
                date_part('month', date) AS month,
                date_part('dow', date) AS weekday,
                date_part('day', date) AS day_num,
                maxtemp_c,
                mintemp_c,
                avgtemp_c,
                maxwind_kph,
                totalprecip_mm,
                avghumidity,
                avguv,
                REPLACE (icon_day, '"', '') as icon_day,
                REPLACE (city, '"', '') as city,
                REPLACE (region, '"', '') as region,
                REPLACE (country, '"', '') as country,
                lat,
                lon,
                case
                        WHEN lat = 52.75 AND lon = 13.27 THEN  'BioKräuterei'
                        WHEN lat = 52.42 AND lon = 13.01 THEN 'Florahof'
                        WHEN lat = 52.48 AND lon = 14.1 THEN 'Gärtnerei Apfeltraum'
                        WHEN lat = 52.39 AND lon = 14.27 THEN 'Gärtnerhof an den Heiligen Pfühlen'
                        WHEN lat = 53.05 AND lon = 13.53 THEN 'Gärtnerhof Stauden­müller'
                        WHEN lat = 52.98 AND lon = 14.03 THEN 'Hof Schwalbennest'
                        WHEN lat = 51.85 AND lon = 14.18 THEN 'Kleiner Hof im Spreewald'
                        WHEN lat = 52.48 AND lon = 13.18 THEN 'Landwirt­schaft und Gemüse­bau­betrieb SpeiseGut'
                        WHEN lat = 52.52 AND lon = 13.45 THEN 'Ökohof Waldgarten'
                        WHEN lat = 52.33 AND lon = 14.52 THEN 'PlantAge'
                        WHEN lat = 52.53 AND lon = 14.11 THEN 'Waldpferdehof'
                end AS farms
        from extracted_temp
)
SELECT *
FROM add_prep_data





--------------------------------- Trash


-- ALTER TABLE ?????
-- ADD COLUMN farms VARCHAR;

-- UPDATE customers
-- SET contact_name = 'BioKräuterei'
-- WHERE lat = 52.75 AND lon = 13.27
-- UPDATE customers
-- SET contact_name = 'Florahof'
-- WHERE lat = 52.42 AND lon = 13.01
-- UPDATE customers
-- SET contact_name = 'Gärtnerei Apfeltraum'
-- WHERE lat = 52.48 AND lon = 14.1
-- UPDATE customers
-- SET contact_name = 'Gärtnerhof an den Heiligen Pfühlen'
-- WHERE lat = 52.40 AND lon = 14.27
-- UPDATE customers
-- SET contact_name = 'Gärtnerhof Stauden­müller'
-- WHERE lat = 53.05 AND lon = 13.53
-- UPDATE customers
-- SET contact_name = 'Hof Schwalbennest'
-- WHERE lat = 52.98 AND lon = 14.03
-- UPDATE customers
-- SET contact_name = 'Kleiner Hof im Spreewald'
-- WHERE lat = 51.85 AND lon = 14.18
-- UPDATE customers
-- SET contact_name = 'Landwirt­schaft und Gemüse­bau­betrieb SpeiseGut'
-- WHERE lat = 52.48 AND lon = 13.18
-- UPDATE customers
-- SET contact_name = 'Ökohof Waldgarten'
-- WHERE lat = 52.52 AND lon = 13.45
-- UPDATE customers
-- SET contact_name = 'PlantAge'
-- WHERE lat = 52.33 AND lon = 14.52
-- UPDATE customers
-- SET contact_name = 'Waldpferdehof'
-- WHERE lat = 52.53 AND lon = 14.11






-- UPDATE customers
-- SET contact_name = 'BioKräuterei'
-- WHERE id = 1; 52.747410123592736,13.269015682025085
-- UPDATE customers
-- SET contact_name = 'Florahof'
-- WHERE id = 2; 52.42333366263088,13.012822555532873
-- UPDATE customers
-- SET contact_name = 'Gärtnerei Apfeltraum'
-- WHERE id = 3; 52.4778624948213,14.103268425869322
-- UPDATE customers
-- SET contact_name = 'Gärtnerhof an den Heiligen Pfühlen'
-- WHERE id = 3; 52.387387869895925,14.270832230216453
-- UPDATE customers
-- SET contact_name = 'Gärtnerhof Stauden­müller'
-- WHERE id = 3; 53.05310799554314,13.529062402110926
-- UPDATE customers
-- SET contact_name = 'Hof Schwalbennest'
-- WHERE id = 3; 52.98447428817329,14.033541713766196
-- UPDATE customers
-- SET contact_name = 'Kleiner Hof im Spreewald'
-- WHERE id = 3; 51.84504840466886,14.179274231385493
-- UPDATE customers
-- SET contact_name = 'Landwirt­schaft und Gemüse­bau­betrieb SpeiseGut'
-- WHERE id = 3; 52.484031130873106,13.18219430421297
-- UPDATE customers
-- SET contact_name = 'Ökohof Waldgarten'
-- WHERE id = 3; 52.524991024020515,13.45077700444836
-- UPDATE customers
-- SET contact_name = 'PlantAge'
-- WHERE id = 3; 52.32872209086622,14.51537511910795
-- UPDATE customers
-- SET contact_name = 'Waldpferdehof'
-- WHERE id = 3; 52.53176440141615,14.108504324750054
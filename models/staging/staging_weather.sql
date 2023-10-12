-- WITH temperature_daily AS (
--     SELECT ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'date')::VARCHAR)::date  AS date,
--         ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'maxtemp_c')::VARCHAR)::FLOAT AS maxtemp_c,
--         ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'mintemp_c')::VARCHAR)::FLOAT AS mintemp_c,
--         ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'avgtemp_c')::VARCHAR)::FLOAT AS avgtemp_c,
--         (extracted_data -> 'location' -> 'name')::VARCHAR  AS city,
--         (extracted_data -> 'location' -> 'region')::VARCHAR  AS region,
--         (extracted_data -> 'location' -> 'country')::VARCHAR  AS country,
--         ((extracted_data -> 'location' -> 'lat')::VARCHAR)::NUMERIC  AS lat, 
--         ((extracted_data -> 'location' -> 'lon')::VARCHAR)::NUMERIC  AS lon
--     FROM {{source("staging", "raw_temp")}})
-- SELECT * 
-- FROM temperature_daily




WITH temperature_daily AS (
    SELECT ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'date')::VARCHAR)::date  AS date,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'maxtemp_c')::VARCHAR)::FLOAT AS maxtemp_c,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'mintemp_c')::VARCHAR)::FLOAT AS mintemp_c,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'avgtemp_c')::VARCHAR)::FLOAT AS avgtemp_c,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'maxwind_kph')::VARCHAR)::FLOAT AS maxwind_kph,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'totalprecip_mm')::VARCHAR)::FLOAT AS totalprecip_mm,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'avghumidity')::VARCHAR)::FLOAT AS avghumidity,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'uv')::VARCHAR)::FLOAT AS avguv,
        (extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'day' -> 'condition' -> 'icon')::VARCHAR AS icon,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'astro' -> 'sunrise')::VARCHAR)::FLOAT AS sunrise,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'astro' -> 'sunset')::VARCHAR)::FLOAT AS sunset,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'time')::VARCHAR)::TIMESTAMP AS time,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'temp_c')::VARCHAR)::FLOAT AS temp_c,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'precip_mm')::VARCHAR)::FLOAT AS precip_mm,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'will_it_rain')::VARCHAR)::FLOAT AS will_it_rain,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'humidity')::VARCHAR)::FLOAT humidity,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'wind_kph')::VARCHAR)::FLOAT AS wind_kph,
        ((extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'wind_degree')::VARCHAR)::FLOAT AS wind_degree,
        (extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'wind_dir')::VARCHAR AS wind_dir,
        (extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'uv')::VARCHAR AS uv,
        (extracted_data -> 'forecast' -> 'forecastday' -> 0 -> 'hour' -> 'condition' -> 'icon')::VARCHAR AS icon,      
        (extracted_data -> 'location' -> 'name')::VARCHAR  AS city,
        (extracted_data -> 'location' -> 'region')::VARCHAR  AS region,
        (extracted_data -> 'location' -> 'country')::VARCHAR  AS country,
        ((extracted_data -> 'location' -> 'lat')::VARCHAR)::NUMERIC  AS lat, 
        ((extracted_data -> 'location' -> 'lon')::VARCHAR)::NUMERIC  AS lon
    FROM {{source("staging", "raw_temp")}})
SELECT * 
FROM temperature_daily
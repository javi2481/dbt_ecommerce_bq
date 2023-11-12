{{ config(materialized="table") }}

SELECT
      customer_id
    , customer_city
    , customer_state
    , g.GEOLOCATION_LAT as customer_geo_lat
    , g.GEOLOCATION_LNG as customer_geo_lng
FROM {{ ref('customers') }} c
    JOIN {{ ref('geolocation') }} g
        ON g.geolocation_zip_code_prefix = c.customer_zip_code_prefix
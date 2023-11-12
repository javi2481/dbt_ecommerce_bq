{{ config(materialized="table") }}

SELECT
      CUSTOMER_ID
    , CUSTOMER_CITY
    , CUSTOMER_STATE
    , g.GEOLOCATION_LAT as CUSTOMER_GEO_LAT
    , g.GEOLOCATION_LNG as CUSTOMER_GEO_LNG
FROM {{ ref('customers') }} c
    JOIN {{ ref('geolocation') }} g
        ON g.geolocation_zip_code_prefix = c.customer_zip_code_prefix
{{ config(materialized="table") }}

select 
    GEOLOCATION_ZIP_CODE_PREFIX
  , GEOLOCATION_LAT
  , GEOLOCATION_LNG
  , TRIM(UPPER(GEOLOCATION_CITY)) AS GEOLOCATION_CITY
  , TRIM(UPPER(GEOLOCATION_STATE)) AS GEOLOCATION_STATE
from 
    data-analyst-prj.ecommerce_raw.geolocation
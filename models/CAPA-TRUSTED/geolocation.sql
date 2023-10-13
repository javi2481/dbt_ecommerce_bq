{{ config(materialized="table") }}

select 
    GEOLOCATION_ZIP_CODE_PREFIX
   , GEOLOCATION_LAT
   , GEOLOCATION_LNG
   , GEOLOCATION_CITY
   , GEOLOCATION_STATE
from 
    data-analyst-prj.ecommerce_raw.geolocation
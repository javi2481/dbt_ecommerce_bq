{{ config(materialized="table") }}

select 
    SELLER_ID
  , SELLER_ZIP_CODE_PREFIX
  , TRIM(UPPER(SELLER_CITY)) AS SELLER_CITY
  , TRIM(UPPER(SELLER_STATE)) AS SELLER_STATE
from 
    {{ source('ecommerce_raw', 'sellers') }}
where
    SELLER_ID IS NOT NULL
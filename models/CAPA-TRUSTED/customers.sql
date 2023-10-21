{{ config(materialized="table") }}

select 
    CUSTOMER_ID
  , CUSTOMER_UNIQUE_ID
  , CUSTOMER_ZIP_CODE_PREFIX
  , TRIM(UPPER(CUSTOMER_CITY)) AS CUSTOMER_CITY
  , TRIM(UPPER(CUSTOMER_STATE)) AS CUSTOMER_STATE
from 
    {{ source('ecommerce_raw', 'customers') }}
where
    CUSTOMER_ID IS NOT NULL 
AND CUSTOMER_UNIQUE_ID IS NOT NULL
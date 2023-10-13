{{ config(materialized="table") }}

select 
     CUSTOMER_ID
   , CUSTOMER_UNIQUE_ID
   , CUSTOMER_ZIP_CODE_PREFIX
   , CUSTOMER_CITY
   , CUSTOMER_STATE
from 
    data-analyst-prj.ecommerce_raw.customers
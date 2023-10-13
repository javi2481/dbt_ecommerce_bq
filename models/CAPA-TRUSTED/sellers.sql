{{ config(materialized="table") }}

select 
    SELLER_ID
  , SELLER_ZIP_CODE_PREFIX
  , SELLER_CITY
  , SELLER_STATE
from 
    data-analyst-prj.ecommerce_raw.sellers
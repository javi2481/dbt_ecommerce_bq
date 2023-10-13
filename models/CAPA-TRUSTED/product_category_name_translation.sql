{{ config(materialized="table") }}

select 
    PRODUCT_CATEGORY_NAME
  , PRODUCT_CATEGORY_NAME_ENGLISH  
from 
    data-analyst-prj.ecommerce_raw.product_category_name_translation
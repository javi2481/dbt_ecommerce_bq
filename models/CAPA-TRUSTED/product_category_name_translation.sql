{{ config(materialized="table") }}

select 
    TRIM(UPPER(PRODUCT_CATEGORY_NAME)) AS PRODUCT_CATEGORY_NAME
  , TRIM(UPPER(PRODUCT_CATEGORY_NAME_ENGLISH)) AS PRODUCT_CATEGORY_NAME_ENGLISH
from 
    data-analyst-prj.ecommerce_raw.product_category_name_translation
{{ config(materialized="table") }}

select 
    PRODUCT_ID
  , TRIM(UPPER(PRODUCT_CATEGORY_NAME)) AS PRODUCT_CATEGORY_NAME
  , PRODUCT_DESCRIPTION_LENGHT
  , PRODUCT_PHOTOS_QTY
  , PRODUCT_WEIGHT_G
  , PRODUCT_LENGTH_CM
  , PRODUCT_HEIGHT_CM
  , PRODUCT_WIDTH_CM
from 
    {{ source('ecommerce_raw', 'products') }}
where
    PRODUCT_ID IS NOT NULL
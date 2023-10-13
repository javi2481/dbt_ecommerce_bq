{{ config(materialized="table") }}

select 
    PRODUCT_ID
  , PRODUCT_CATEGORY_NAME
  , PRODUCT_DESCRIPTION_LENGHT
  , PRODUCT_PHOTOS_QTY
  , PRODUCT_WEIGHT_G
  , PRODUCT_LENGTH_CM
  , PRODUCT_HEIGHT_CM
  , PRODUCT_WIDTH_CM
from 
    data-analyst-prj.ecommerce_raw.products
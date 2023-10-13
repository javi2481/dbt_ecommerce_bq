{{ config(materialized="table") }}

select 
    ORDER_ID
  , ORDER_ITEM_ID
  , PRODUCT_ID
  , SELLER_ID
  , SHIPPING_LIMIT_DATE
  , PRICE
  , FREIGHT_VALUE
from 
    data-analyst-prj.ecommerce_raw.order_items
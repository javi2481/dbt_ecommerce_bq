{{ config(materialized="table") }}

select 
    ORDER_ID
  , ORDER_ITEM_ID
  , PRODUCT_ID
  , SELLER_ID
  , TIMESTAMP(SHIPPING_LIMIT_DATE) AS SHIPPING_LIMIT_DATE
  , COALESCE(PRICE, 0) AS PRICE
  , FREIGHT_VALUE

from 
    data-analyst-prj.ecommerce_raw.order_items
where 
    ORDER_ID IS NOT NULL 
AND ORDER_ITEM_ID IS NOT NULL 
AND PRODUCT_ID IS NOT NULL 
AND SELLER_ID IS NOT NULL
{{ config(materialized="table") }}

select 
    ORDER_ID
  , CUSTOMER_ID
  , ORDER_STATUS
  , ORDER_PURCHASE_TIMESTAMP
  , ORDER_APPROVED_AT
  , ORDER_DELIVERED_CARRIER_DATE
  , ORDER_DELIVERED_CUSTOMER_DATE
  , ORDER_ESTIMATED_DELIVERY_DATE
from 
    data-analyst-prj.ecommerce_raw.orders
{{ config(materialized="table") }}

select 
    ORDER_ID
  , PAYMENT_SEQUENTIAL
  , PAYMENT_TYPE
  , PAYMENT_INSTALLMENTS
  , PAYMENT_VALUE
from 
    data-analyst-prj.ecommerce_raw.order_payments
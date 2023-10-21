{{ config(materialized="table") }}

select 
    ORDER_ID
  , PAYMENT_SEQUENTIAL
  , TRIM(UPPER(PAYMENT_TYPE)) AS PAYMENT_TYPE
  , PAYMENT_INSTALLMENTS
  , PAYMENT_VALUE
from 
    {{ source('ecommerce_raw', 'order_payments') }}
where
    ORDER_ID IS NOT NULL
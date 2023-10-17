{{ config(materialized="table") }}

select 
    ORDER_ID
  , PAYMENT_SEQUENTIAL
  , TRIM(UPPER(PAYMENT_TYPE)) AS PAYMENT_TYPE
  , PAYMENT_INSTALLMENTS
  , PAYMENT_VALUE
from 
    data-analyst-prj.g_drive_javier_ecommerce.order_payments
where
    ORDER_ID IS NOT NULL
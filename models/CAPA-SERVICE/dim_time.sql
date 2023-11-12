{{ config(materialized="table") }}


SELECT
      EXTRACT(hour from o.ORDER_PURCHASE_TIMESTAMP) as hour
    , EXTRACT(day from o.ORDER_PURCHASE_TIMESTAMP) as day
    , EXTRACT(week from o.ORDER_PURCHASE_TIMESTAMP) as week
    , EXTRACT(month from o.ORDER_PURCHASE_TIMESTAMP) as month
    , EXTRACT(quarter from o.ORDER_PURCHASE_TIMESTAMP) as quarter
    , EXTRACT(year from o.ORDER_PURCHASE_TIMESTAMP) as year
FROM {{ ref('orders') }} o



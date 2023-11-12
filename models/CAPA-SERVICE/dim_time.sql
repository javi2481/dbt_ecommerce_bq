{{ config(materialized="table") }}


SELECT
      EXTRACT(hour from o.ORDER_PURCHASE_TIMESTAMP) as HOUR
    , EXTRACT(day from o.ORDER_PURCHASE_TIMESTAMP) as DAY
    , EXTRACT(week from o.ORDER_PURCHASE_TIMESTAMP) as WEEK
    , EXTRACT(month from o.ORDER_PURCHASE_TIMESTAMP) as MONT
    , EXTRACT(quarter from o.ORDER_PURCHASE_TIMESTAMP) as QUARTER
    , EXTRACT(year from o.ORDER_PURCHASE_TIMESTAMP) as YEAR
FROM {{ ref('orders') }} o



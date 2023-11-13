{{ config(materialized="table") }}


SELECT
      c.CUSTOMER_ID
    , p.PRODUCT_ID
    , s.SELLER_ID
    , o.ORDER_PURCHASE_TIMESTAMP
    , o.ORDER_STATUS
    , g.GEOLOCATION_ZIP_CODE_PREFIX
    , sum(p.PAYMENT_VALUE) as TOTAL_VENTAS
    , p.PAYMENT_TYPE
    , p.PAYMENT_VALUE
    , or_rw.REVIEW_SCORE
FROM {{ ref('orders') }} o
    JOIN {{ ref('customers') }} c
        ON o.ORDER_ID = c.CUSTOMER_ID
            JOIN {{ ref('sellers') }} s
                ON o.ORDER_ID = s.SELLER_ID
                    JOIN {{ ref('products') }} p
                        ON p.PRODUCT_ID = 
                            JOIN {{ ref('geolocation') }} g
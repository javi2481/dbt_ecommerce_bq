{{ config(materialized="table") }}

SELECT
      p.PRODUCT_ID
    , p.PRODUCT_CATEGORY_NAME
    , o_i.price as PRODUCT_PRICE
    , p.PRODUCT_WEIGHT_G as PRODUCT_WEIGHT
    , p.PRODUCT_LENGTH_CM * p.PRODUCT_HEIGHT_CM * p.PRODUCT_WIDTH_CM as PRODUCT_VOLUME
FROM {{ ref('products') }} p
    JOIN {{ ref('order_items') }} o_i
        ON p.product_id = o_i.order_id
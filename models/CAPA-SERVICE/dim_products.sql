{{ config(materialized="table") }}

SELECT
      p.product_id
    , p.product_category_name
    , o_i.price as product_price
    , p.PRODUCT_WEIGHT_G as product_peso
    , p.PRODUCT_LENGTH_CM * p.PRODUCT_HEIGHT_CM * p.PRODUCT_WIDTH_CM as product_volume
FROM {{ ref('products') }} p
    FULL JOIN {{ ref('order_items') }} o_i
        ON p.product_id = o_i.order_id
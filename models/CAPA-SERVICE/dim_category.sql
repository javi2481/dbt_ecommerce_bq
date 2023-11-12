{{ config(materialized="table") }}

SELECT
    c.dim_category_id
    , c.product_category_name
    , c.product_category_name_translation
FROM {{ ref('category') }} c
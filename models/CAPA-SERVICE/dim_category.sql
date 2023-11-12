{{ config(materialized="table") }}

SELECT
      product_category_name
    , product_category_name_translation
FROM {{ ref('product_category_name_translation') }}
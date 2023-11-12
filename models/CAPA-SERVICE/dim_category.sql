{{ config(materialized="table") }}

SELECT
      PRODUCT_CATEGORY_NAME
    , PRODUCT_CATEGORY_NAME_TRANSLATION
FROM {{ ref('product_category_name_translation') }}
{{ config(materialized="table") }}

select 
    TRIM(UPPER(PRODUCT_CATEGORY_NAME)) AS PRODUCT_CATEGORY_NAME
  , TRIM(UPPER(PRODUCT_CATEGORY_NAME_ENGLISH)) AS PRODUCT_CATEGORY_NAME_ENGLISH
from 
    FROM {{ source('ecommerce_raw', 'product_category_name_translation') }}
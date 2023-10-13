{{ config(materialized="table") }}

select 
    *
from 
    data-analyst-prj.ecommerce_raw.product_category_name_translation
{{ config(materialized="table") }}

select 
    *
from 
    data-analyst-prj.ecommerce_raw.products
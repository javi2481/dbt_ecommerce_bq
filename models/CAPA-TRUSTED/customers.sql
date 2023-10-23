{{ config(materialized="table") }}

select
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    trim(upper(customer_city)) as customer_city,
    trim(upper(customer_state)) as customer_state
from {{ source("ecommerce_raw", "customers") }}
where customer_id is not null and customer_unique_id is not null

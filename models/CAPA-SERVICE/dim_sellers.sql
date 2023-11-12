{{ config(materialized="table") }}

SELECT
      SELLER_ID
    , or_rw.review_score as SELLER_RATING
    , g.GEOLOCATION_CITY as SELLER_CITY
    , g.GEOLOCATION_STATE as SELLER_STATE
    , g.GEOLOCATION_LAT as SELLER_GEO_LAT
    , g.GEOLOCATION_LNG as SELLER_GEO_LNG
FROM {{ ref('sellers') }} s
    FULL JOIN {{ ref('order_reviews') }} or_rw
        ON s.seller_id = or_rw.review_id
            FULL JOIN  {{ ref('geolocation') }} g
                ON s.SELLER_ZIP_CODE_PREFIX = g.geolocation_zip_code_prefix
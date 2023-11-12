{{ config(materialized="table") }}

SELECT
      seller_id
    , or_rw.review_score as seller_rating
    , g.GEOLOCATION_CITY as seller_city
    , g.GEOLOCATION_STATE as seller_state
    , g.GEOLOCATION_LAT as seller_geo_lat
    , g.GEOLOCATION_LNG as seller_geo_lng
FROM {{ ref('sellers') }} s
    FULL JOIN {{ ref('order_reviews') }} or_rw
        ON s.seller_id = or_rw.review_id
            FULL JOIN  {{ ref('geolocation') }} g
                ON s.SELLER_ZIP_CODE_PREFIX = g.geolocation_zip_code_prefix
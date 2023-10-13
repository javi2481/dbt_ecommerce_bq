{{ config(materialized="table") }}

select 
    REVIEW_ID
  , ORDER_ID
  , REVIEW_SCORE
  , REVIEW_COMMENT_TITLE
  , REVIEW_COMMENT_MESSAGE
  , REVIEW_CREATION_DATE
  , REVIEW_ANSWER_TIMESTAMP
from 
    data-analyst-prj.ecommerce_raw.order_reviews
with raw_reviews as (
    select *
    from {{source('airbnb', 'reviews')}}
)
select  listing_id,
        comments as review_text,
        date as review_date,
        reviewer_name,
        sentiment as review_sentiment
from raw_reviews
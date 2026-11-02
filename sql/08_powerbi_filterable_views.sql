USE olist_ecommerce;

CREATE OR REPLACE VIEW vw_delivery_performance_by_seller_state AS

WITH order_seller_state AS (
    SELECT DISTINCT
        o.order_id,
        s.seller_state,

        DATEDIFF(
            o.order_delivered_customer_date,
            o.order_purchase_timestamp
        ) AS delivery_days,

        CASE
            WHEN o.order_delivered_customer_date >
                 o.order_estimated_delivery_date
            THEN 1
            ELSE 0
        END AS is_late

    FROM orders o

    JOIN order_items oi
        ON o.order_id = oi.order_id

    JOIN sellers s
        ON oi.seller_id = s.seller_id

    WHERE o.order_status = 'delivered'
      AND o.order_delivered_customer_date IS NOT NULL
      AND o.order_estimated_delivery_date IS NOT NULL
)

SELECT
    seller_state,
    COUNT(DISTINCT order_id) AS delivered_orders,
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days,
    ROUND(AVG(is_late) * 100, 2) AS late_delivery_percentage

FROM order_seller_state

GROUP BY seller_state;

CREATE OR REPLACE VIEW vw_review_details_by_seller_state AS

SELECT DISTINCT
    r.review_id,
    r.order_id,
    s.seller_state,
    r.review_score

FROM order_reviews r

JOIN order_items oi
    ON r.order_id = oi.order_id

JOIN sellers s
    ON oi.seller_id = s.seller_id

WHERE r.review_score BETWEEN 1 AND 5;

CREATE OR REPLACE VIEW vw_seller_state_dimension AS

SELECT DISTINCT
    seller_state

FROM sellers

WHERE seller_state IS NOT NULL;
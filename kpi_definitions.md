# KPI Definitions – Brazilian E-Commerce Analytics

## 1. Overview

This document defines the Key Performance Indicators (KPIs) used in the Brazilian E-Commerce Analytics project.

The KPIs are grouped into three major dashboard sections:

1. Executive Overview
2. Customer Intelligence
3. Operations & Seller Performance

The metrics are generated using SQL views, SQL aggregations and Power BI DAX measures.

---

## 2. Executive Overview KPIs

### 2.1 Total Orders

**Definition:** Total number of orders recorded in the dataset.

**Calculation:**
```sql
COUNT(DISTINCT order_id)
```

**Data Source:** Orders / Executive Overview SQL view.

**Purpose:** Measures overall order volume.

### 2.2 Product Revenue

**Definition:** Total revenue generated from product sales, excluding freight charges.

**Calculation:**
```sql
SUM(order_items.price)
```

**Data Source:** Order Items / Sales analysis view.

**Purpose:** Measures the total value of products sold.

### 2.3 Monthly Product Revenue

**Definition:** Product revenue aggregated by order purchase month.

**Calculation:**
```sql
SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
        AS order_month,
    SUM(order_items.price) AS product_revenue
```

**Purpose:** Identifies monthly revenue trends.

### 2.4 Top Product Categories by Revenue

**Definition:** Product categories ranked according to total product revenue.

**Calculation:**
```sql
SUM(order_items.price)
```

Grouped by translated product category.

**Purpose:** Identifies the highest revenue-generating categories.

---

## 3. Customer Intelligence KPIs

### 3.1 Unique Customers

**Definition:** Number of distinct real-world customers.

**Calculation:**
```sql
COUNT(DISTINCT customer_unique_id)
```

**Data Source:** Customers table.

### 3.2 Repeat Customers

**Definition:** Number of unique customers who placed more than one order.

**Calculation:**
```sql
COUNT(DISTINCT customer_unique_id)
```

With the condition:
```sql
HAVING COUNT(DISTINCT order_id) > 1
```

**Data Source:** Customers and Orders.

### 3.3 Repeat Customer Rate (%)

**Definition:** Percentage of purchasing customers who placed multiple orders.

**Formula:**

Repeat Customer Rate = (Repeat Customers / Unique Customers) × 100

**Purpose:** Evaluates customer retention and repeat purchasing behaviour.

### 3.4 Average Customer Spending (R$)

**Definition:** Average product spending per purchasing customer.

**Calculation:**
```sql
AVG(customer_spending)
```

Where customer spending is calculated as:
```sql
SUM(order_items.price)
```

Grouped by unique customer.

**Data Source:** Customers, Orders and Order Items.

### 3.5 RFM Customer Segmentation

RFM analysis classifies customers based on three behavioural dimensions.

| Component | Definition |
|---|---|
| Recency | Time since the customer's last purchase |
| Frequency | Number of orders placed |
| Monetary | Total product spending |

**Customer Segments:**

- Champions
- Loyal Customers
- Potential Loyalists
- Regular Customers

**Purpose:** Supports targeted marketing, customer retention and loyalty strategies.

---

## 4. Operations & Seller Performance KPIs

### 4.1 Delivered Orders

**Definition:** Number of orders successfully delivered to customers.

**Calculation:**
```sql
COUNT(*)
```

Condition:
```sql
order_status = 'delivered'
```

**Data Source:** vw_delivery_performance.

### 4.2 Average Delivery Days

**Definition:** Average number of days between order purchase and customer delivery.

**Calculation:**
```sql
ROUND(
    AVG(
        DATEDIFF(
            order_delivered_customer_date,
            order_purchase_timestamp
        )
    ), 2
)
```

**Data Source:** vw_delivery_performance.

### 4.3 Late Delivery Percentage (%)

**Definition:** Percentage of delivered orders that arrived after their estimated delivery date.

**Formula:**

Late Delivery (%) = (Late Delivered Orders / Delivered Orders) × 100

**Calculation:**
```sql
ROUND(
    100.0 * SUM(
        order_delivered_customer_date >
        order_estimated_delivery_date
    ) / COUNT(*),
    2
)
```

**Data Source:** vw_delivery_performance.

### 4.4 Total Sellers

**Definition:** Number of distinct sellers represented in the selected analysis context.

**Calculation:**
```sql
COUNT(DISTINCT seller_id)
```

**Data Source:** Seller performance data.

### 4.5 Average Customer Review

**Definition:** Average customer review score.

**Calculation:**
```sql
ROUND(AVG(review_score), 2)
```

**Data Source:** vw_review_performance.

**Scale:** 1 to 5.

---

## 5. Seller Performance Analysis

### 5.1 Top Sellers by Revenue

**Definition:** Sellers ranked according to their total product revenue.

**Calculation:**
```sql
SUM(product_revenue)
```

Grouped by seller ID and sorted in descending order.

**Purpose:** Identifies the highest revenue-generating sellers.

### 5.2 Seller Revenue by State

**Definition:** Total product revenue grouped by seller state.

**Calculation:**
```sql
SUM(product_revenue)
```

Grouped by seller_state.

**Purpose:** Compares seller revenue contributions across Brazilian states.

---

## 6. Customer Review Analysis

### 6.1 Review Score Distribution

**Definition:** Distribution of customer reviews across scores from 1 to 5.

**Calculation:**
```sql
SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM order_reviews
GROUP BY review_score;
```

**Purpose:** Evaluates customer satisfaction patterns.

### 6.2 Average Review Score

**Definition:** Average rating received across customer reviews.

**Calculation:**
```sql
AVG(review_score)
```

**Purpose:** Provides an overall indicator of customer feedback.

---

## 7. Interactive Filtering

The Power BI dashboards support interactive filtering.

| Dashboard | Filters |
|---|---|
| Executive Overview | Order Month, Product Category |
| Customer Intelligence | Customer State |
| Operations & Seller Performance | Seller State, Review Score |

The relevant KPI cards and charts respond to the applicable slicers through Power BI relationships and DAX measures.

---

## 8. Technical Implementation

| Technology | Purpose |
|---|---|
| MySQL | Data storage and SQL analysis |
| SQL Views | Reusable analytical datasets |
| Power BI | Dashboard development |
| DAX | Dynamic KPI calculations |
| Power Query | Data connection and transformation |

---

## 9. Important Notes

1. Product revenue represents product item prices and excludes freight charges.
2. Customer counts are based on distinct customer_unique_id where specified.
3. Repeat customer rate uses purchasing customers as its denominator.
4. Average delivery days measures the difference between purchase and actual delivery dates.
5. Late delivery percentage considers delivered orders with valid delivery dates.
6. KPI values displayed on dashboards may change when slicers are applied.
7. Values displayed in dashboard cards may be rounded or abbreviated.

---

## 10. Conclusion

These KPIs provide a structured approach to measuring e-commerce sales, customer behaviour, delivery efficiency, seller performance and customer satisfaction.

Combining SQL-based analysis with Power BI DAX calculations enables interactive business intelligence and supports data-driven decision-making.

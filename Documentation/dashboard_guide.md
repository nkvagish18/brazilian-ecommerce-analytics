# Power BI Dashboard Guide

## 1. Dashboard Overview

The Brazilian E-Commerce Analytics dashboard is an interactive three-page Power BI report built to analyze business performance, customer behavior, and operational efficiency using the Olist e-commerce dataset.

The dashboard is organized into three pages:

1. Executive Overview
2. Customer Intelligence
3. Operations & Seller Performance

Each page provides a different business perspective while allowing users to explore the data through interactive slicers.

---

## 2. Page 1 – Executive Overview

### Objective

Provide a high-level overview of the e-commerce business, focusing on order performance, product revenue, and category-level contribution.

### KPI Cards

- **Total Orders:** Displays the total number of orders represented in the report.
- **Product Revenue:** Shows revenue generated from product sales.

### Visualizations

**1. Monthly Product Revenue Trend**

Displays product revenue across months to help identify revenue patterns and changes over time.

**2. Top Product Categories by Revenue**

Ranks product categories based on their contribution to product revenue. This helps identify categories that generate the highest sales value.

### Slicers

- **Order Month:** Filters the report by order month.
- **Product Category:** Filters the report by product category.

### Business Purpose

This page helps users understand overall business performance, identify revenue trends, and recognize the most valuable product categories.

---

## 3. Page 2 – Customer Intelligence

### Objective

Understand customer purchasing behavior, repeat purchases, spending patterns, and customer segmentation.

### KPI Cards

- **Unique Customers:** Counts distinct customer identities using `customer_unique_id`.
- **Repeat Customers:** Counts customers with more than one order.
- **Repeat Customer Rate (%):** Measures the percentage of unique customers who placed multiple orders.
- **Average Customer Spending:** Displays average customer monetary value based on the RFM analysis data.

### Visualizations

**1. RFM Customer Segmentation**

Displays the distribution of customers across RFM segments.

RFM analysis uses three dimensions:

- **Recency:** How recently a customer purchased.
- **Frequency:** How often a customer purchased.
- **Monetary:** How much a customer spent.

The segmentation helps identify different customer groups and understand their purchasing behavior.

### Slicers

- **Customer State:** Filters customer analysis by geographical state.

### Business Purpose

This page helps identify repeat customers, understand customer spending, and examine customer segments. These insights can support customer retention strategies and targeted marketing decisions.

---

## 4. Page 3 – Operations & Seller Performance

### Objective

Evaluate delivery performance, seller contribution, and customer review patterns.

### KPI Cards

- **Delivered Orders:** Displays the number of delivered orders.
- **Average Delivery Days:** Measures the average delivery duration.
- **Late Delivery (%):** Shows the percentage of deliveries classified as late.
- **Total Sellers:** Displays the total number of sellers represented in the analysis.
- **Average Customer Review:** Shows the average customer review score.

### Visualizations

**1. Seller Revenue by State**

Compares seller revenue across geographical states to understand regional revenue contribution.

**2. Top Sellers by Revenue**

Ranks sellers according to their revenue contribution and helps identify high-performing sellers.

**3. Customer Review Score Distribution**

Shows the distribution of customer review scores and helps assess customer satisfaction patterns.

### Slicers

- **Seller State:** Filters seller-related delivery and review analysis by seller location.
- **Review Score:** Filters review-related analysis by customer review score.

### Business Purpose

This page helps evaluate delivery efficiency, compare seller performance, identify geographical contributions, and understand customer feedback.

---

## 5. Dashboard Interactivity

The report uses slicers to allow users to explore different parts of the business without manually changing the underlying dataset.

### Available Filters

| Dashboard Page | Slicer | Purpose |
|---|---|---|
| Executive Overview | Order Month | Analyze performance across selected months |
| Executive Overview | Product Category | Focus on selected product categories |
| Customer Intelligence | Customer State | Analyze customers by geographical state |
| Operations & Seller Performance | Seller State | Explore seller-related operational performance by state |
| Operations & Seller Performance | Review Score | Analyze review-related metrics for selected scores |

### Using the Dashboard

1. Open the required dashboard page.
2. Select a value from the relevant slicer.
3. Observe how the connected KPI cards and visualizations respond.
4. Change or clear the slicer selection to explore another segment.
5. Use multiple filters together where supported.

**Note:** Slicer interactions depend on the relationships and visual interaction settings configured in Power BI. The report should be tested to confirm that each slicer filters only the intended visuals.

---

## 6. Technical Implementation

The dashboard is supported by SQL-based analytical views created in MySQL.

The implementation includes:

- Data preparation and quality checks using SQL.
- Analytical queries for business performance analysis.
- Customer segmentation using RFM analysis.
- SQL views designed to supply dashboard-ready data.
- Power BI data modeling and relationships.
- DAX measures for dynamic KPI calculations.
- Interactive slicers and visualizations.

The operations dashboard uses a seller-state dimension to support filtering across the relevant delivery and review datasets.

---

## 7. Key Analytical Areas

The dashboard covers three major analytical areas:

| Analytical Area | Key Focus |
|---|---|
| Business Performance | Orders, product revenue, monthly trends, and category performance |
| Customer Intelligence | Unique customers, repeat purchases, spending, and RFM segmentation |
| Operations & Seller Performance | Delivery efficiency, seller revenue, geographical performance, and customer reviews |

---

## 8. Conclusion

The Power BI dashboard transforms the SQL-based analysis of the Brazilian E-Commerce Public Dataset into an interactive business intelligence report.

By combining business performance, customer intelligence, and operational analysis, the dashboard provides a structured way to explore the e-commerce business and derive insights that can support data-driven decision-making.

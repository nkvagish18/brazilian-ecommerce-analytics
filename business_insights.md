# 📊 Business Insights – Brazilian E-Commerce Analytics

## 1. Introduction

This document presents the key business observations identified through SQL analysis and Power BI dashboards built using the Brazilian E-Commerce Public Dataset by Olist.

The analysis focuses on four major business areas:

- Sales and revenue performance
- Customer behaviour and retention
- Customer segmentation using RFM analysis
- Delivery operations and seller performance

The objective is to convert transactional data into meaningful insights that can support business decision-making.

---

## 2. Sales and Revenue Analysis

**Dashboard:** Executive Overview

### Key Metrics

| KPI | Dashboard Value |
|---|---:|
| Total Orders | 98K |
| Product Revenue | 13.49M |

### Observations

1. The project records approximately 98K orders across the analysed dataset.
2. Total product revenue displayed in the dashboard is approximately 13.49 million.
3. Monthly product revenue trends show variations in sales performance over time.
4. Product category analysis allows identification of revenue-generating categories.
5. Monthly and category slicers enable interactive investigation of sales performance.

### Business Recommendations

- Monitor monthly revenue trends to identify changes in sales performance.
- Focus on high-performing product categories.
- Investigate categories with relatively low revenue.
- Use historical revenue patterns to support inventory and sales planning.

---

## 3. Customer Intelligence Analysis

**Dashboard:** Customer Intelligence

### Key Metrics

| KPI | Dashboard Value |
|---|---:|
| Unique Customers | 5K |
| Repeat Customers | 144 |
| Repeat Customer Rate | 2.99% |
| Average Customer Spending | R$140.41 |

### Observations

1. The dashboard reports approximately 5K unique customers.
2. Repeat customers account for 144 customers.
3. The repeat customer rate is approximately 2.99%, indicating an opportunity to improve customer retention.
4. Average customer spending is approximately R$140.41.
5. RFM segmentation identifies four customer groups:
   - Regular Customers
   - Loyal Customers
   - Potential Loyalists
   - Champions

### RFM Customer Segmentation

RFM stands for:

- **Recency:** How recently a customer purchased.
- **Frequency:** How frequently a customer purchases.
- **Monetary:** How much a customer spends.

The segmentation chart indicates that Regular Customers form the largest group, followed by Loyal Customers. Potential Loyalists and Champions represent smaller groups.

### Business Recommendations

- Introduce loyalty programmes to encourage repeat purchases.
- Provide targeted offers to potential loyalists.
- Develop retention campaigns for customers who have not purchased recently.
- Reward high-value customers and Champions.
- Use customer spending patterns to improve marketing strategies.

---

## 4. Operations and Seller Performance Analysis

**Dashboard:** Operations & Seller Performance

### Key Metrics

The dashboard contains the following dynamic KPIs:

| KPI | Description |
|---|---|
| Delivered Orders | Number of successfully delivered orders |
| Average Delivery Days | Average time taken to deliver orders |
| Late Delivery (%) | Percentage of delivered orders delivered after the estimated date |
| Total Sellers | Number of sellers in the selected analysis context |
| Average Customer Review | Average customer review score out of 5 |

### Observations

1. Delivery performance can be evaluated through average delivery duration and late delivery percentage.
2. Seller State filtering allows comparison of operational performance across Brazilian states.
3. Review Score filtering allows analysis of customer satisfaction across selected review scores.
4. Seller revenue analysis identifies the revenue contribution of different sellers and states.
5. The customer review distribution chart shows that five-star reviews form the largest category in the displayed distribution.

### Business Recommendations

- Investigate sellers and regions with higher late delivery rates.
- Improve delivery planning and logistics coordination.
- Monitor seller revenue contributions.
- Identify factors associated with negative customer reviews.
- Use customer feedback to improve operational quality.

---

## 5. Overall Business Findings

The combined dashboards provide insights into three important business dimensions:

| Business Area | Key Finding |
|---|---|
| Sales | Revenue performance can be monitored across months and product categories. |
| Customer Retention | Repeat customer rate presents an opportunity for retention improvements. |
| Customer Segmentation | RFM analysis helps identify different customer groups. |
| Delivery Operations | Delivery duration and late delivery rates support logistics evaluation. |
| Seller Performance | Revenue comparisons help identify high-performing sellers and states. |
| Customer Satisfaction | Review score distribution helps evaluate customer feedback. |

---

## 6. Strategic Recommendations

Based on the dashboard analysis, the following strategies can be considered:

### Sales Growth
- Monitor monthly revenue performance.
- Strengthen high-performing product categories.
- Identify opportunities in lower-performing categories.

### Customer Retention
- Introduce targeted loyalty programmes.
- Encourage repeat purchases through personalised offers.
- Focus on converting potential loyalists into loyal customers.

### Operational Improvement
- Monitor delivery delays.
- Evaluate seller performance across states.
- Investigate factors affecting delivery efficiency.

### Customer Satisfaction
- Analyse negative customer reviews.
- Improve delivery and service quality.
- Monitor review score trends.

---

## 7. Conclusion

The Brazilian E-Commerce Analytics project demonstrates how MySQL, SQL and Power BI can be combined to build an end-to-end business intelligence solution.

The project transforms raw transactional data into interactive dashboards that support analysis of sales performance, customer behaviour, RFM segmentation, delivery operations and seller performance.

The findings highlight opportunities in customer retention, sales growth, logistics efficiency and customer satisfaction.

**The overall objective is to transform e-commerce data into actionable business intelligence.**

---

*Note: Dashboard KPI values are rounded as displayed. Interactive KPI values can change according to selected slicers and filters. Operational metrics should always be interpreted in the context of the selected seller state and review score.*

# Global Consulting Revenue Analytics Dashboard

## Project Overview

Organizations generate large volumes of operational and financial data every day. However, decision-makers often struggle to convert this information into actionable business insights.

This project analyzes consulting service revenue across multiple regions, departments, and clients to identify revenue drivers, performance trends, and growth opportunities.

The dashboard was developed using SQL and Power BI with a focus on data storytelling and business decision support rather than simple reporting.

---

# Situation

The consulting organization lacked a centralized reporting solution to monitor revenue performance across its business operations.

Revenue data existed across multiple records, making it difficult to quickly answer key management questions such as:

* Which region generates the highest revenue?
* Which department contributes most to overall revenue?
* How is revenue changing over time?
* Which client accounts require attention?
* How efficiently are consulting resources being utilized?

---

# Business Problem

Management required a dashboard that could:

* Consolidate revenue information into a single view.
* Identify top-performing regions and departments.
* Monitor month-on-month revenue trends.
* Track operational efficiency.
* Highlight opportunities for revenue growth.

---

# Project Objectives

The primary objectives were:

1. Measure total consulting revenue.
2. Analyze revenue contribution by region.
3. Evaluate department-level performance.
4. Monitor month-on-month revenue growth.
5. Measure operational efficiency through revenue-per-hour metrics.
6. Identify client accounts requiring revenue expansion efforts.
7. Deliver executive-level insights using data storytelling principles.

---

# Project Scope

### In Scope

* Revenue analysis
* Department analysis
* Regional analysis
* Client analysis
* KPI monitoring
* Trend analysis

### Out of Scope

* Profitability analysis
* Employee performance analysis
* Forecasting models
* Customer churn prediction

### Time Period

2023 Service Transactions

### Granularity

Transaction-Level Service Data

---

# Tools & Technologies

| Tool        | Purpose               |
| ----------- | --------------------- |
| SQL Server  | Data Analysis         |
| Power BI    | Dashboard Development |
| Power Query | Data Transformation   |
| DAX         | KPI Calculations      |
| Excel       | Data Storage          |

---

# Data Model

The project follows a star-schema design.

### Fact Table

**service_data**

Contains:

* Service Date
* Client Name
* Department
* Hours
* Hourly Rate
* Revenue
* Branch ID

### Dimension Table

**branch_data**

Contains:

* Branch ID
* Region

### Relationship

service_data.branch_id → branch_data.branch_id

---

# Data Workflow

Raw Data
↓
SQL Analysis
↓
Data Cleaning
↓
Data Modeling
↓
DAX Measures
↓
Power BI Dashboard
↓
Business Insights
↓
Recommendations

---

# Key Metrics

### Total Revenue

Measures total consulting revenue generated during the reporting period.

### Total Service Hours

Measures consulting effort delivered.

### Average Revenue per Client

Measures average client value.

### Month-on-Month Revenue Growth %

Measures business growth momentum.

### Revenue Contribution %

Measures regional contribution to overall revenue.

---

# Dashboard Preview

Insert dashboard screenshot here.

![Dashboard](visuals/dashboard.png)

---https://github.com/jitendera-code/global-consulting-revenue-analytics/blob/main/Dashboard_Screenshots/revenue_dashboard.png

# Analysis & Findings

## Insight 1: Europe Generates 37% of Total Revenue

Europe contributes the largest share of consulting revenue among all regions.

### Business Impact

The company demonstrates strong market penetration within Europe.

### Recommendation

Expand consulting operations within lower-performing regions to reduce concentration risk.

---

## Insight 2: Audit Generates Highest Revenue Across All Departments

Audit services generate the largest revenue contribution among all consulting service lines.

### Business Impact

Audit represents a significant revenue driver.

### Recommendation

Increase cross-selling opportunities between Audit and other consulting services.

---

## Insight 3: Revenue Growth Remained Volatile Across 2023

Month-on-month revenue growth fluctuated significantly throughout the year.

### Business Impact

Revenue volatility can create forecasting uncertainty.

### Recommendation

Investigate seasonal demand patterns and strengthen recurring revenue streams.

---

## Insight 4: Several Client Accounts Generate Minimal Revenue

Certain client accounts contribute very little revenue compared to the broader customer base.

### Business Impact

Potential revenue expansion opportunities may exist.

### Recommendation

Implement targeted client engagement and upselling initiatives.

---

# Business Recommendations

### Regional Strategy

Diversify revenue sources by expanding operations within underperforming regions.

### Service Strategy

Promote bundled consulting solutions across departments.

### Client Strategy

Develop account-growth initiatives for low-revenue clients.

### Revenue Strategy

Improve forecasting by monitoring seasonal revenue patterns.

---

# Assumptions & Limitations

* Dataset represents consulting service transactions for a single reporting period.
* Revenue is used as the primary performance metric.
* Profitability and cost analysis were not included.
* Results are dependent on data quality within source systems.

---

# Future Enhancements

* Revenue forecasting
* Profitability analysis
* Client segmentation
* Customer lifetime value analysis
* Executive drill-through pages
* Predictive analytics

---

# Deliverables

* SQL Analysis Scripts
* Power BI Dashboard
* Business Insights Report
* Data Storytelling Presentation

---

# Author

Jitender Yadav

Aspiring Data Analyst

Skills:

* SQL
* Power BI
* Excel
* Data Visualization
* Data Storytelling

Last Updated: August 2025


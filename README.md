# Customer Retention & Revenue Recovery Analysis
Identifying At-risk customers and prioritizing revenue recovery using SQL and Tableau

## Project Overview
This project analyzes customer transaction data to identify repeat customers at risk of disengagement and prioritize revenue recovery efforts under limited data conditions.

The goal is not to predict churn with machine learning, but to enable **actionable, revenue-focused decision-making** using recency and transaction behavior.

---

## Objective
- Identify high-risk repeat customers
- Quantify revenue exposure
- Prioritize recovery efforts based on business impact

---

## Data & Constraints
- Transaction data covering Dec 1–9, 2011
- No demographic or customer profile information
- One-time buyers excluded to focus on repeat customer retention
- Churn inferred using a fixed reference date (Dec 23, 2011)

---

## Analysis Approach
1. Cleaned and standardized raw transaction data
2. Aggregated customer-level metrics (recency, frequency, monetary value)
3. Segmented customers based on inactivity windows
4. Ranked at-risk customers by revenue contribution

---

## Key Insights
- $3.37M in total revenue identified as at risk
- 939 repeat customers classified as at-risk
- Top 50 customers represent 36% of recovery opportunity
- $242K recoverable via a focused pilot
- $673K potential recovery at scale

---

## Dashboard Preview
<img width="1821" height="1649" alt="Customer Retention   Revenue  Recovery Analysis (1)" src="https://github.com/user-attachments/assets/6c16a06c-1e0d-4b5f-9820-bfab7dfacac0" />
---

## Tools Used
- Google BigQuery (SQL)
- Tableau
- Google Sheets (documentation and validation)

---

## Next Steps
-- Revenue risk is concentrated among a small subset of high-value customers with declining purchase recency.
-- Prioritizing recovery efforts on the top 50 at-risk customers provides the highest potential return with minimal operational complexity.

--This approach supports:

-- Faster decision-making

-- Reduced marketing inefficiency

-- A scalable framework for retention analysis

## Operational Note:
The churn-risk logic can be automated to generate periodic priority lists for retention teams, reducing manual analysis and improving response speed.

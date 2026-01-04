-- STEP 2: Customer retention & revenue analysis
CREATE OR REPLACE TABLE 
  `peak-orbit-463415-i0.Retail_Recovery_Project.customer_analytics_report` AS
SELECT
  CustomerID_Clean,
  MAX(Invoice_Date) AS Last_Purchase_Date,
  DATE_DIFF(DATE('2011-12-23'), MAX(Invoice_Date), DAY) AS Days_Since_Last_Purchase,
  ROUND(SUM(Line_Item_Total), 2) AS Total_Lifetime_Value,
  COUNT(DISTINCT Invoice_ID) AS Total_Orders
FROM 
  `peak-orbit-463415-i0.Retail_Recovery_Project.cleaned_sales_master`
GROUP BY 
  CustomerID_Clean;

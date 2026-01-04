-- STEP 1: Clean and standardize raw transaction data
CREATE OR REPLACE TABLE 
  `peak-orbit-463415-i0.Retail_Recovery_Project.cleaned_sales_master` AS
SELECT DISTINCT
  TRIM(CAST(Invoice AS STRING)) AS Invoice_ID,
  TRIM(CAST(StockCode AS STRING)) AS StockCode,
  TRIM(Description) AS Description,
  CAST(Quantity AS INT64) AS Quantity,
  CAST(InvoiceDate AS DATE) AS Invoice_Date,
  CAST(Price AS FLOAT64) AS Unit_Price,
  TRIM(CAST(`Customer ID` AS STRING)) AS CustomerID_Clean,
  TRIM(Country) AS Country,
  ROUND(Quantity * Price, 2) AS Line_Item_Total
FROM 
  `peak-orbit-463415-i0.Retail_Recovery_Project.Retail_Raw_Data`
WHERE 
  `Customer ID` IS NOT NULL
  AND Quantity > 0
  AND Price > 0;

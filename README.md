# pharmacy-decision-support-system-azure-data-engineering
Pharmacy Decision Support System with Azure Data Engineering : This repository provides a comprehensive solution for a Pharmacy Decision Support System (DSS) built using Azure's data engineering tools. The system integrates real-time data ingestion, processing, and analytics to support effective decision-making for pharmacy operations.

## Project Overview 
FitHealthPro Pharmacy Solutions aims to streamline and enhance decision-making by implementing a data-driven support system that provides timely insights on sales, inventory, and customer behavior according to different productwise, product category wise and city wise. This system leverages Azure Data Engineering services to process daily transactional data and generate actionable insights for revenue growth, operational efficiency and customer engagement.

###

## High Level Project Architecture 
###
Fact and Dimension Tables: Ingest and store historical and transactional data in Delta Lake tables inside Azure Databricks.
   
###
**1) Data Ingestion Pipeline** :
Trigger the **Azure Data Factory (ADF) Pipeline** to initiate data ingestion each day a new **daily_pos_transaction_file** arrives in **Azure Data Lake Gen2**.
    
###
**2) Data Processing & KPI Generation in Azure Databricks** :
Process the daily_pos_transaction_file using PySpark to clean, validate, and transform data. Populate Delta Tables by calculating various defined KPIs:Citywise Sales, ProductCategorywise Sales, Customerwise Purchase Behavior.
**Delta Table Storage**: Store processed data in **Delta Lake tables**, acting as the **data warehouse** for **KPIs**.
   
###
**3) Export Processed Data to Azure Data Lake Gen2** :
Export all output KPI datasets to Azure Data Lake Gen2 in .csv format with custom filenames containing the processing date (e.g., citywise_KPI_2024-10-26.csv).
This enables historical tracking of processed data and easy access to insights.

###
**4) Archival & Cleanup of Raw Files** :
Move the raw source file, daily_pos_transaction_file, to a processed/directory within Azure Data Lake Gen2, organizing files by processing date.
Clean up the previous job directory to free up storage and manage data retention effectively.
Delete raw source file (daily_pos_transaction_file )from previous job directory.

###
**5) Visualization & Reporting** :
   Generate **PowerBI Visualization Reports** from Delta Table as per defined KPIs.
   Connect Power BI to Delta tables in Azure Databricks to create interactive dashboards and reports. These include:
   **Citywise Sales Trends:** Visualization of sales performance across different cities.
   **Product Category Sales:** Detailed analysis of popular product categories.
   **Customer Behavior Analysis:** Insights into purchasing patterns and customer segmentation.
   Reports provide stakeholders with real-time insights into business metrics, enabling quick decision-making.


## Benefits of the Pharmacy Decision Support System using Azure Data Engineering Solution
###
1) Improved Sales and Profitability: Leveraging sales data by location and category allows the company to optimize stock and reduce waste.
2) Data-Driven Marketing: Targeted insights enable HealthPro to improve customer satisfaction with relevant promotions.Customerwise insights enable the company to personalize marketing and increase customer loyalty through tailored offers. Product category analysis helps company in designing targeted promotions for high-demand products.By understanding city-specific demand, company can allocate inventory based on local needs, minimizing stockouts and overstock situations.
3) Operational Efficiency: Automated data processing, archival, and reporting streamline pharmacy operations and reduce manual intervention.

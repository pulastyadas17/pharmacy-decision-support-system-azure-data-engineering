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

![job-01-kpi-generation-from-pos-file](https://github.com/user-attachments/assets/a4419b82-f546-4dc6-8c9f-e35bfd2c05bb)

![job02-insurance-claim-processing](https://github.com/user-attachments/assets/a1804091-4dd7-4c87-a4f4-6356acfd5264)

    
###
**2) Data Processing & KPI Generation in Azure Databricks** :
Process the daily_pos_transaction_file using PySpark to clean, validate, and transform data. Populate Delta Tables by calculating various defined KPIs:

![Azure_Databricks_Notebooks](https://github.com/user-attachments/assets/ee30a124-5cd3-4f88-9b73-60a9bd132ca8)

![Azure_Databricks_Catalog_KPI_Delta_Tables](https://github.com/user-attachments/assets/0dfaf8e4-3828-4c48-a3db-6f3d7add0aad)


CitywiseKPI

![Azure_Databricks_Catalog_KPI_Delta_Table_City](https://github.com/user-attachments/assets/245b1307-782a-4d0b-85ea-b1dd14266ab4)

![Azure_Databricks_Catalog_KPI_Delta_Table_City2](https://github.com/user-attachments/assets/73580384-476b-4834-970a-16afe4ca6120)



ProductCategorywiseKPI

![Azure_Databricks_Catalog_KPI_Delta_Table_Product_Category](https://github.com/user-attachments/assets/64651741-ec02-4d9a-ba25-8caa77ad66f1)

![Azure_Databricks_Catalog_KPI_Delta_Table_Product_Category2](https://github.com/user-attachments/assets/a1491640-cdaa-435a-8fc4-0ef3fb9aec42)



CustomerwiseKPI

![Azure_Databricks_Catalog_KPI_Delta_Table_Customer](https://github.com/user-attachments/assets/d48cfc94-788f-4e94-82d5-b74cf442b420)

![Azure_Databricks_Catalog_KPI_Delta_Table_Customer2](https://github.com/user-attachments/assets/7265026c-2451-4c9d-9a65-ec3fc6549a42)




**Delta Table Storage**: Store processed data in **Delta Lake tables**, acting as the **data warehouse** for **KPIs**.

![Daily_Input_Insurance_Claim_Requests_AzureSQLDB](https://github.com/user-attachments/assets/b97b27c0-b1de-4318-817c-7a64284829da)

![Processed_Mediclaims_Update_On_Seperate_Table](https://github.com/user-attachments/assets/f032f541-46f9-44ff-8d6f-3c1a4d7a8e4b)

![Update_Rejected_Claims_on_Seperate_Table](https://github.com/user-attachments/assets/4f14dcd9-1da6-41bc-bcb1-127fb219141a)

   
###
**3) Export Processed Data to Azure Data Lake Gen2** :
Export all output KPI datasets to Azure Data Lake Gen2 in .csv format with custom filenames containing the processing date (e.g., citywise_KPI_2024-10-26.csv).
This enables historical tracking of processed data and easy access to insights.

![Pharmacy_DSS_Project_Container](https://github.com/user-attachments/assets/95b11185-ea94-48a5-a2a9-1846af0ca4bc)


###
**4) Archival & Cleanup of Raw Files** :
Move the raw source file, daily_pos_transaction_file, to a processed/directory within Azure Data Lake Gen2, organizing files by processing date.
Clean up the previous job directory to free up storage and manage data retention effectively.
Delete raw source file (daily_pos_transaction_file )from previous job directory.


###
**5) Visualization & Reporting** :
   Generate **PowerBI Visualization Reports** from Delta Table as per defined KPIs.
   Connect Power BI to Delta tables in Azure Databricks to create interactive dashboards and reports. These include:
   
   ![Azure_Databricks_PowerBI_Connection_Setup](https://github.com/user-attachments/assets/8bfa3b25-25be-4b73-b983-3c288ad2580d)

   **Citywise Sales Trends:** Visualization of sales performance across different cities.
   **Product Category Sales:** Detailed analysis of popular product categories.
   **Customer Behavior Analysis:** Insights into purchasing patterns and customer segmentation.
   Reports provide stakeholders with real-time insights into business metrics, enabling quick decision-making.


## Benefits of the Pharmacy Decision Support System using Azure Data Engineering Solution
###
**1) Improved Sales and Profitability:** Leveraging sales data by location and category allows the company to optimize stock and reduce waste.

**2) Data-Driven Marketing:** Targeted insights enable HealthPro to improve customer satisfaction with relevant promotions.Customerwise insights enable the company to personalize marketing and increase customer loyalty through tailored offers. Product category analysis helps company in designing targeted promotions for high-demand products.By understanding city-specific demand, company can allocate inventory based on local needs, minimizing stockouts and overstock situations.

**3) Operational Efficiency:** Automated data processing, archival, and reporting streamline pharmacy operations and reduce manual intervention.

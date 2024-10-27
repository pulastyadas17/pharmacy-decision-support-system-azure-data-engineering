# pharmacy-decision-support-system-azure-data-engineering
Pharmacy Decision Support System with Azure Data Engineering : This repository provides a comprehensive solution for a Pharmacy Decision Support System (DSS) built using Azure's data engineering tools. The system integrates real-time data ingestion, processing, and analytics to support effective decision-making for pharmacy operations.

## Project Overview 
FitHealthPro Pharmacy Solutions aims to streamline and enhance decision-making by implementing a data-driven support system that provides timely insights on sales, inventory, and customer behavior according to different productwise, product category wise and city wise. This system leverages Azure Data Engineering services to process daily transactional data and generate actionable insights for revenue growth, operational efficiency and customer engagement.

###


1) Create all fact table and dimension tables inside databricks in the form of Delta Table.
2) Trigger notebook from Azure Data Factory to process daily_pos_transaction_file which will arrive in Azure Data Lake Gen2.
3) After processing daily_pos_transaction_file in Azure Databricks using PySpark. Load the processed file to various delta tables as per various KPI defined like - Citywise, PeroductCategorywise and CustomertWise.(Delta Table will act as Data Warehouse of defined KPIs)
4) Put copy of all the output files in Azure Data Lake Gen2 as csv format with custom name along with processing date.
5) Move raw source file (daily_pos_transaction_file ) file to directory(/processed/date/container) inside Azure Data Lake Gen2.
6) Delete raw source file (daily_pos_transaction_file )from previous job directory.
7) Generate PowerBI Visualization Reports from Delta Table as per defined KPIs.


## Benefits of the Pharmacy Decision Support System using Azure Data Engineering Solution
##
1) Improved Sales and Profitability: Leveraging sales data by location and category allows HealthPro to optimize stock and reduce waste.
2) Data-Driven Marketing: Targeted insights enable HealthPro to improve customer satisfaction with relevant promotions.
3) Operational Efficiency: Automated data processing, archival, and reporting streamline pharmacy operations and reduce manual intervention.

# LITA-PROJECT-SUBSCRIPTION-COMPANY

This document represents my subscription customer project with The Incubator Hub.

### **Project Title: Analysis of Subscription Service's Customer Data**

[Data Sources](#data-sources)

[Tools Used](#tools-used)

[Data Cleaning and Preparations](#data-cleaning-and-preparations)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

[Data Visualization](#data-visualization)

### **Project Overview**
---
The goal of this project is to analyze the customer data  for a subscription services  to identify segments and sales trends.

### **Data Sources**
---
The primary data source for this project is Data Sale.csv, an open-source dataset freely available for download from platforms like Kaggle or other data repository sites.

### **Tools Used**
---
- Microsoft Excel  [Download](https://www.microsoft.com)
1.  For Data Cleaning
2.  For Analysis
3.  For Visualization

* SQL: Structured Query Language for querying data

* GitHub: Portfolio building

* Power BI: Visualization

 ### **Data Cleaning and Preparation**
In the initial phase of data cleaning and preparation, we perform the following actions:
* Data loading and inspection
* Handling missing variables
* Data cleaning and formatting

### **Exploratory Data Analysis (EDA)**
 ---
EDA involved examining the data to answer various questions such as:
* What is the overall monthly subscription trend?
* Which customer are the top subscriber?
* Which subscription plan was canceled?

Here are the steps taken to complete this project:

1. **Cleaning of the Sales Data:**

* Open the Excel Worksheet.

* Highlight the data.

* Click on the Data Tab.

* Select "Remove Duplicates" to eliminate any duplicate entries.

2. **Calculate Total Duration and Average Duration:**

* Formula for Total Duration: =(SubscriptionEnd - SubscriptionStart)

* Formula for Average Duration: =AVERAGE(I2:I33788)

![Powerbi Class Project-06](https://github.com/user-attachments/assets/66ba5fd7-1076-48a0-9000-4383ca382e9c)
![Powerbi Class Project-07](https://github.com/user-attachments/assets/61fa0e8e-b5f4-4d91-b3df-a302a7c48b17)

3. **Pivot Table Report:** Displays total sales categorized by region, month, and product.

##![Powerbi Class Project-05](https://github.com/user-attachments/assets/bcfb74f4-ae2a-4f78-9c8f-d2fbf34ea62c)

# Data Analysis
---
Here, we include basic lines of code, queries, and some of the DAX expressions used during the analysis.

```SQL
SELECT Region, COUNT(CustomerID) AS total_customers
FROM [Customer Data]
GROUP BY Region;
```

```DAX FUNCTION
SubscriptionDuration = DATEDIFF([start_date], COALESCE([cancel_date], TODAY()), DAY)
```

### Data Visualization
![Customer Data Visualization_page-0001](https://github.com/user-attachments/assets/b669169e-5c9e-477a-8a49-d22077b46134)

### **Subscription Service Customer Analysis**
XYZ Subscription Company served a total of 20 customers, generating a total revenue of 68 million across four regions. Here is the breakdown:

* **East:** Subscribed to Basic, generating 17 million in revenue from 5 customers over a period of 1 year and 8 months.

* **North:** Subscribed to Basic, generating 17 million in revenue from 5 customers over a period of 1 year and 8 months.

* **South:** Subscribed to Premium, generating 17 million in revenue from 5 customers over a period of 1 year and 8 months.

* **West:** Subscribed to Standard, generating 17 million in revenue from 5 customers over a period of 1 year and 8 months.

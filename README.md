# 🏥 Healthcare Data Analytics: Python ETL, SQL Insights & Power BI Dashboard

## 📌 Project Overview
This project processes and analyzes over **5,000+ raw patient records** across 5 major Indian cities (*Bangalore, Mumbai, Delhi, Hyderabad, and Chennai*). 

The primary goal of this project is to demonstrate an end-to-end data analytics workflow:
1. **Data Wrangling & Feature Engineering (Python):** Handling missing values, treating cost outliers, and categorizing demographic/visit frequency metrics.
2. **Business Analysis (SQL):** Answering key operational and financial questions regarding patient utilization and insurance coverage.
3. **Interactive Visual Reporting (Power BI):** Providing executive decision-makers with clear, actionable health metrics and KPIs.

📂 **Dataset:** 
https://1drv.ms/x/c/88C3D9BEA77C1D5F/IQC06utq1nyLSLcyml6Xa-smAQtsI7NjsdOOVZjzNfgWRZQ?e=NxLhVy

---

## 🛠️ Tech Stack & Skills
* **Language:** Python 3.x
* **Libraries:** `pandas`, `numpy`, `seaborn`, `matplotlib`
* **Querying & Analysis:** SQL (MySQL)
* **Visualization:** Power BI

---

## 🔄 Project Workflow & Pipeline

### 1. Data Cleaning & Preprocessing (Python)
* **Deduplication:** Identified and removed 99 duplicate rows, cleaning the dataset down to **5,001 unique patient records**.
* **Data Type Conversion:** Standardized `Age` to integer format and `Admission_Date` to `datetime64`.
* **Missing Value Imputation:**
  * Imputed **501 missing Age values** using the dataset mean (~49.6 years).
  * Imputed **494 missing Treatment_Cost records** using median costs grouped by diagnosis (*Hypertension, Flu, Asthma, COVID-19, Diabetes*).
* **Outlier Capping (Winsorization):**
  * Detected extreme treatment cost values reaching up to ~₹199,702.
  * Capped treatment costs between the **5th percentile (₹3,238)** and **95th percentile (₹47,948)** to normalize skewness without losing patient entries.

### 2. Feature Engineering & Stratification
Created 3 core categorical feature bins to simplify downstream SQL queries and Power BI dashboard filters:
* **`Age_Group`:** Binned into *Child (0–18)*, *Young Adult (19–35)*, *Adult (36–50)*, *Middle-Aged (51–65)*, and *Senior (66+)*.
* **`Treatment_Cost_Group`:** Binned into 4 quantile groups (*Low cost*, *Medium cost*, *High cost*, *Very high cost*).
* **`Hospital_Visits_Group`:** Segmented visit frequencies into:
  * *Infrequent* (1–5 visits)
  * *Occasional* (6–10 visits)
  * *Frequent* (11–15 visits)
  * *High-Utilizer* (16–20 visits)

---

## 💼 Business Analysis (SQL)

### 🎯 Strategic Questions Answered
Addressed **10 core healthcare queries** across four operational pillars:
* **Financial Performance:** Pinpointed top revenue-generating diagnoses and leading geographic markets (*Mumbai, Hyderabad, Bangalore*).
* **Patient Utilization:** Categorized visit patterns (*High-Utilizer vs. Infrequent*) and identified high-demand diagnostic categories.
* **Insurance Analysis:** Evaluated insured vs. uninsured coverage ratios across medical conditions to highlight financial risk gaps.
* **Operational Efficiency:** Tracked high-frequency repeat patients (>5 visits) to optimize bed capacity and hospital staffing.

### 🛠️ Technical Implementation
Utilized SQL aggregates (`SUM`, `AVG`, `COUNT`), conditional `CASE WHEN` logic, `RANK()` window functions, and `GROUP BY` clauses with `LIMIT 10` to evaluate costs, coverage, and patient utilization.

---

## 📊 Healthcare Analytics Dashboard (Power BI)

### 1. 📈 Overall Business Performance
* **Revenue & Volume:** Baseline tracking of overall treatment revenue and patient admission volume.
* **Transaction Metrics:** Summary of total successfully processed patient records and diagnostic billing items.
* **Macro KPIs:** Performance tracking against historical hospital targets and financial benchmarks.

### 2. 📦 Product & Category Analysis (Diagnoses)
* **Top Revenue Drivers:** Identification of high-volume medical conditions (*Hypertension, COVID-19, Diabetes*).
* **Segment Share:** Percentage revenue contribution calculated for each diagnostic category.
* **Underperforming Segments:** Pinpointing low-volume or low-margin treatments requiring strategic review.

### 3. 🕒 Temporal Trends & Seasonality
* **Demand Patterns:** Analysis of daily, weekly, and monthly patient admission cycles.
* **Operational Peaks:** Pinpointing specific peak utilization windows for staffing optimization.
* **Seasonal Adjustments:** Identifying recurring health trends to optimize bed allocation and inventory.

### 4. 🗺️ Geographic Distribution
* **Top Revenue Hubs:** Mapping revenue generation across major Indian cities (*Mumbai, Bangalore, Hyderabad, Delhi, Chennai*).
* **Underperforming Zones:** Identifying weak geographic markets to guide targeted regional healthcare marketing.
* **Market Penetration:** Regional distribution analysis to assess healthcare footprint and expansion potential.

### 5. 🔍 Segment Deep-Dives
* **Head-to-Head Comparison:** Comparative performance analysis of top-performing diagnostic units and hospital branches.
* **Structural Breakdown:** Granular cost and utilization breakdown of the largest revenue-contributing patient segments.

---
## Dashboard
  https://1drv.ms/i/c/88C3D9BEA77C1D5F/IQD4d54UB-1LSLQVPB1QEnlYAQ8jaqzSb6yA0DfAWN-1jNk?e=LKfbrc

---

## 💡 Key Strategic Recommendations
* 🩺 **Chronic Care Subscriptions:** Package Hypertension & Diabetes care (>41% of total costs) into quarterly/annual plans to build predictable recurring revenue.
* 🛡️ **Insurance Help Desks:** Set up on-site TPA desks to convert the ~60% uninsured patient base into insured clients, reducing hospital default risk.
* 🏙️ **Targeted Metro Spending:** Direct primary expansion funds to high-yielding cities (*Mumbai & Hyderabad*) while tuning pricing in Delhi to regain lost volume.
* 📈 **Tiered High-Utilizer Billing:** Adjust pricing tiers for frequent visits (>10 visits, like rehab/therapy) to capture incremental service fees without capping early.

# Instagram Usage Data Analysis – Python + SQL

This repository contains an end-to-end data preparation and SQL analysis project.

The main objective of the project is to transform raw Excel data into a clean, structured dataset and perform analytical queries using PostgreSQL.

---

## Project Overview

This project demonstrates a practical data workflow:

1. Import raw Excel data in Google Colab  
2. Clean and standardize data using Python (pandas)  
3. Handle missing values and perform basic transformations  
4. Export the processed dataset to CSV  
5. Load the cleaned dataset into PostgreSQL using SQLAlchemy  
6. Perform SQL-based analytical queries  
7. Explore insights in Jupyter Notebook  

The focus of this project is on data preparation and SQL-based analysis, not machine learning.

---

## Tools & Technologies

- Python  
- pandas  
- numpy  
- PostgreSQL  
- SQLAlchemy  
- pgAdmin  
- Google Colab  
- Jupyter Notebook  
- VS Code  
- Git & GitHub  
- Excel  

---

## Repository Structure

- clean_data_vscode.py → Python script that loads CSV into PostgreSQL  
- instagram_usage_analysis.ipynb → Data cleaning and transformation notebook  
- project_SQL.sql → SQL analysis queries  
- README.md  

---

## Data Pipeline

### Step 1 – Data Cleaning (Google Colab)

The raw Excel dataset was:
- imported into Google Colab  
- cleaned and standardized  
- missing values handled  
- columns formatted consistently  
- transformed into a structured dataset  

The cleaned dataset was exported as CSV.

### Step 2 – Database Integration (Python + PostgreSQL)

Using SQLAlchemy:
- The cleaned CSV file was loaded into PostgreSQL  
- A table named `clean_dataset` was created  
- The dataset was stored for further querying  

### Step 3 – SQL Analysis

SQL queries were used to analyze:

- Total number of users  
- Users by country  
- Premium vs non-premium users  
- Average engagement score  
- Age group distribution  
- Average daily activity metrics  
- BMI analysis by gender  
- Users with/without children  
- Activity comparison across demographic segments  

---

## Key Learning Outcomes

- Practical data cleaning workflow  
- Database integration using SQLAlchemy  
- Writing structured SQL analytical queries  
- Using GROUP BY, CASE, aggregations  
- Organizing a reproducible data project  
- Version control with Git  

---

## How to Run

1. Run `instagram_usage_analysis.ipynb` in Google Colab  
2. Export the cleaned dataset as CSV  
3. Run `clean_data_vscode.py` to load data into PostgreSQL  
4. Execute queries from `project_SQL.sql` in pgAdmin  

---

## Project Goal

The goal of this repository is to demonstrate junior-level data engineering and SQL skills through a structured, reproducible workflow focused on:

- Data ingestion  
- Data transformation  
- Database integration  
- SQL-based analysis 


# Chinook Digital Music Store: Sales \& Marketing Analysis

<!-- Enlaces con formato de insignias -->

[!\[English](https://img.shields.io/badge/English-blue)](README.md) [!\[Español](https://img.shields.io/badge/Español-green)](README-es.md)



**Tools:** SQL · Python (Pandas, Matplotlib) · Power BI

## Project Overview

Comprehensive analysis of Chinook digital store sales to guide Q3 marketing budget allocation. This project encompasses data extraction from a relational database, validation, exploratory data analysis (EDA), and the creation of an interactive dashboard to drive strategic decision-making.

## Key Findings

* **Genre Dominance:** Genre X accounts for X% of total revenue...
* **Top Markets:** The US and Canada lead in total billing, but market Y shows the highest average order value (AOV).
* **Seasonality:** A recurring sales peak is observed during the months of...

## Methodology \& Workflow

1. **Extraction (SQL):** Queried the SQLite database to extract key performance indicators (KPIs) regarding billing by country, genre, artist, and temporal evolution. *(See `/sql`)*
2. **Validation \& Transformation (Python):** Used Pandas to audit SQL results, calculate Month-over-Month (MoM) growth, and prepare the final clean dataset for visualization. *(See `/python`)*
3. **Visualization (Power BI):** Developed an interactive dashboard focused on monthly tracking and regional market performance.

## Interactive Dashboard

<!-- Update the image path with your actual screenshot -->

!\[Power BI Dashboard Preview](path-to-your-image.png)

## Repository Structure

* `/sql`: Commented queries addressing the core business questions.
* `/python`: Exploratory analysis scripts and final dataset generation.
* `/powerbi`: `.pbix` file and PDF export of the dashboard.


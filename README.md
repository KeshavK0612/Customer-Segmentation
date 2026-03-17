# 🛒 E-Commerce Customer Segmentation Analysis

A data analytics project that analyzes e-commerce transactions to understand customer purchasing behavior and identify high-value customer segments.

This project demonstrates **SQL analysis, Excel data cleaning, and Power BI dashboard development** to extract actionable business insights.

---

# 📊 Project Overview

E-commerce businesses rely heavily on understanding customer behavior to improve marketing strategies and maximize revenue.

This project performs **customer segmentation using RFM analysis**:

* **Recency** → How recently a customer purchased
* **Frequency** → How often they purchase
* **Monetary** → How much they spend

Using these metrics, customers are segmented into different value groups.

---

# 🎯 Objectives

* Analyze customer purchasing patterns
* Identify high-value customers
* Understand geographic sales distribution
* Discover product sales trends
* Build an interactive business dashboard

---

# 🧠 Key Business Questions

* Which customers generate the most revenue?
* Which countries contribute the most sales?
* What are the monthly revenue trends?
* Which products are top sellers?
* How are customers segmented based on spending?

---

# 🧰 Tech Stack

| Tool     | Purpose            |
| -------- | ------------------ |
| SQL      | Data analysis      |
| Excel    | Data cleaning      |
| Power BI | Data visualization |
| Python   | Dataset generation |

---

# 📁 Project Structure

```
ecommerce-customer-segmentation
│
├── dataset
│   └── ecommerce_dataset.csv
│
├── sql
│   └── ecommerce_analysis_queries.sql
│
├── dashboard
│   └── ecommerce_dashboard.pbix
│
├── presentation
│   ├── ecommerce_dashboard_presentation.pptx
│   └── ecommerce_dashboard_report.pdf
│
├── images
│   └── dashboard_preview.png
│
└── README.md
```

---

# 📈 Dashboard Overview

The Power BI dashboard provides insights into:

### Key Performance Indicators

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value

### Visualizations

* Monthly revenue trend
* Revenue by country
* Customer segmentation
* Top customers
* Product performance

---

# 📊 Example Insights

### Revenue Distribution

Top customers contribute a significant portion of total revenue.

### Geographic Sales

The United Kingdom generates the highest revenue compared to other countries.

### Customer Behavior

High-value customers purchase more frequently and generate higher lifetime value.

### Product Performance

Technology accessories such as keyboards and SSDs show strong sales performance.

---

# 🚀 How to Use

1. Import the dataset into SQL
2. Run the provided SQL queries for analysis
3. Load the dataset into Power BI
4. Build the dashboard visualizations
5. Explore insights using filters and slicers

---

# 📊 Sample SQL Queries

Total Revenue

```
SELECT SUM(TotalSales)
FROM ecommerce_sales;
```

Top Customers

```
SELECT CustomerID,
SUM(TotalSales) AS total_spent
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY total_spent DESC;
```

Revenue by Country

```
SELECT Country,
SUM(TotalSales)
FROM ecommerce_sales
GROUP BY Country
ORDER BY SUM(TotalSales) DESC;
```

---

# 📄 Project Presentation

The repository includes:

* PowerPoint presentation
* PDF report
* Power BI dashboard

These files summarize the project insights and dashboard analysis.

---

# 📌 Key Skills Demonstrated

* Data cleaning and preprocessing
* SQL data analysis
* Customer segmentation (RFM)
* Data visualization with Power BI
* Business insight generation

---

# 👨‍💻 Author

Keshav

---

# 📜 License

MIT License

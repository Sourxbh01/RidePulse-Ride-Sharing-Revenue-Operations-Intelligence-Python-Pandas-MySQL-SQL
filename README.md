# 🚕 RidePulse — Ride-Sharing Revenue & Operations Intelligence

> An end-to-end data analytics project that analyzes ride-booking data to uncover booking performance, revenue patterns, cancellation behavior, vehicle performance, payment behavior, ride distance, and operational insights.



## 📌 Project Overview

**RidePulse — Ride-Sharing Revenue & Operations Intelligence** is an end-to-end data analytics portfolio project designed to analyze ride-sharing booking data and transform raw records into meaningful business insights.

The project combines **Python, Pandas, NumPy, Jupyter Notebook, MySQL, and SQL** to create a complete analytics workflow.

The analysis focuses on:

- Booking performance
- Revenue and booking value
- Completed and cancelled rides
- Vehicle performance
- Customer cancellation behavior
- Payment methods
- Ride distance
- Customer and driver ratings
- Monthly booking trends
- SQL-based business analysis

The project follows a complete data analytics pipeline:

**Raw Data → Data Audit → Data Cleaning → EDA → MySQL → SQL Analysis → Python–MySQL Integration → Business Insights**

---

# 🎯 Project Objectives

The main objectives of RidePulse are:

- Analyze overall ride-booking performance
- Measure completed and cancelled rides
- Calculate booking performance metrics
- Analyze booking value and revenue patterns
- Compare different vehicle types
- Identify cancellation patterns
- Analyze customer cancellation reasons
- Analyze payment methods
- Compare ride distance across vehicle types
- Identify high-volume vehicle categories
- Analyze monthly booking-value trends
- Apply SQL window functions for vehicle ranking
- Connect Python with MySQL for reproducible business analysis

---

# 📊 Dataset

The project uses a ride-booking dataset containing approximately:

### 📦 148,770 Bookings

Key project-level metrics include:

| Metric | Value |
|---|---:|
| Total Bookings | 148,770 |
| Completed Rate | 65.96% |
| Cancellation Rate | 25.00% |
| Customer Cancellation | 19.15% |
| Driver Cancellation | 7.45% |

### Important Dataset Fields

- `Booking ID`
- `Date`
- `Time`
- `Booking Status`
- `Customer ID`
- `Vehicle Type`
- `Pickup Location`
- `Drop Location`
- `Booking Value`
- `Ride Distance`
- `Payment Method`
- `Driver Ratings`
- `Customer Rating`
- `Reason for cancelling by Customer`
- `Reason for cancelling by Driver`
- `Avg VTAT`
- `Avg CTAT`

---

# 🛠️ Tech Stack

- **Pandas** — Data manipulation, cleaning, aggregation, and analysis
- **NumPy** — Numerical operations and data processing
- **Matplotlib** — Data visualization
- **Seaborn** — Statistical and analytical visualizations

---
Project Structure 

                RAW DATA
                   │
                   ▼
           ┌───────────────┐
           │   Data Audit  │
           └───────────────┘
                   │
                   ▼
           ┌───────────────┐
           │ Data Cleaning │
           └───────────────┘
                   │
                   ▼
           ┌───────────────┐
           │      EDA      │
           └───────────────┘
                   │
                   ▼
          Cleaned CSV Dataset
                   │
                   ▼
           ┌───────────────┐
           │     MySQL     │
           │   ridepulse   │
           └───────────────┘
                   │
                   ▼
           ┌───────────────┐
           │ SQL Analysis  │
           └───────────────┘
                   │
                   ▼
           Python ↔ MySQL
                   │
                   ▼
           ┌───────────────┐
           │   Business    │
           │   Insights    │
           └───────────────┘
                   │
                   ▼
            Visualizations

📈 Analysis Areas

RidePulse covers multiple areas of data analytics:

📊 Booking Analysis
Total bookings
Booking status
Completed rides
Cancelled rides
💰 Revenue Analysis
Booking value
Total booking value
Average booking value
Monthly booking-value trends
🚕 Vehicle Analysis
Vehicle booking volume
Vehicle booking value
Average booking value
Ride distance
Vehicle ranking
❌ Cancellation Analysis
Cancellation rate
Customer cancellations
Driver cancellations
Customer cancellation reasons
💳 Payment Analysis
Payment method distribution
Booking value by payment method
Average booking value by payment method
⭐ Rating Analysis
Customer ratings
Driver ratings
💡 Business Questions

The project answers practical business questions such as:

How many rides are completed successfully?
What percentage of bookings are cancelled?
What is the overall booking value?
How does booking value vary across vehicle types?
What are the major customer cancellation reasons?
Which payment methods contribute to booking value?
How does ride distance vary between vehicle types?
Which vehicle categories have high booking volumes?
How does booking value change over time?
How can vehicle types be ranked based on total booking value?

📄 Project Report

A detailed PowerPoint presentation is included in the repository.

The presentation covers:

Project overview
Problem statement
Dataset
Technology stack
Data preparation
Exploratory analysis
SQL business analysis
Python–MySQL integration
Business analysis dimensions
Project structure
Key takeaways
👨‍💻 Project Type

End-to-End Data Analytics Portfolio Project

Built Using
Python
Pandas
NumPy
Matplotlib
Seaborn
Jupyter Notebook
MySQL
SQL
mysql-connector-python

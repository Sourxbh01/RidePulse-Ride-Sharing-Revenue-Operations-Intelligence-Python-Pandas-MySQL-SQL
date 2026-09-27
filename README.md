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



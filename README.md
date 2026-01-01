# OLA Ride-Hailing Operations Analysis & Business Strategy Dashboard

## 📊 Project Overview

This project presents a comprehensive **Exploratory Data Analysis (EDA)**, statistical assessment, and predictive modeling study focused on Ola’s daily ride-hailing activities. The primary goal was to uncover actionable insights, trends, and patterns from operational data to inform strategic business decisions within the ride-hailing context. The analysis involved advanced SQL querying and the development of detailed, visually engaging Power BI dashboards for seamless stakeholder review.

---

## 🔒 Dataset & Data Quality

The analysis utilized a **proprietary, custom-generated dataset** that is not available from public sources. This realistic synthetic dataset was created using advanced AI techniques to mirror real-world complexities.

| Metric | Detail | Citation |
| :--- | :--- | :--- |
| **Size** | Over 100,000 rows | |
| **Columns** | 19 carefully selected columns | |
| **Data Scope** | Ride bookings, driver assignments, trip durations, pricing dynamics, customer ratings, peak-hour patterns, and geographical distributions. |
| **Data Cleaning** | **Lightweight and straightforward**. Primary steps included removing duplicate rows to ensure uniqueness and appropriately setting column-wise data types (e.g., converting numerical columns to numeric and dates to datetime). |

---

## 🛠️ Methodology and Tasks

The project workflow proceeded efficiently due to the high quality of the AI-generated data, allowing a streamlined transition into core analysis.

### 1. SQL Analysis (Database Insights)

A series of ten in-depth SQL tasks were performed to extract foundational metrics and operational data. The resulting insights were derived directly from MySQL queries, with dedicated views created for managers and stakeholders for effortless review.

**Key SQL Tasks Performed:**
*   Calculate the **total booking value of successfully completed rides**.
*   Retrieve all rides where payment was made using **UPI**.
*   List the top 5 customers who booked the highest number of rides.
*   Find the average ride distance for each vehicle type.
*   Get the total number of cancelled rides by customers and by drivers (categorized by reason).

### 2. Power BI Visualization (Stakeholder Dashboards)

A multi-page Power BI report was developed to display findings clearly, logically, and in a visually engaging manner. These focused dashboards highlight critical aspects such as ride trends, revenue metrics, and customer/driver performance.

**Dashboard Pages & Key Visuals:**
| Page Title | Purpose | Key Visuals/Focus |
| :--- | :--- | :--- |
| **Overall** | Overview of core metrics (Page-1) | Total Bookings (103,024), Total Booking Values (**₹35.08M**), Booking Status Breakdown (**62.09% Success**). |
| **Vehicle Type** | Performance comparison across categories | Total Booking Value, Average Distance Travelled, Success Booking Value per vehicle type. |
| **Revenue** (Page-3) | Financial analysis | Revenue by Payment Method, Top 5 Customers by Total Booking Value, Ride Distance by Date. |
| **Cancellation** (Page-4) | Identification of high cancellation reasons | **Cancellation Rate (**28.08%**), Canceled by Customers, Canceled by Driver. |
| **Ratings** (Page-5) | Service quality assessment | Driver Ratings and Customer Ratings across all vehicle types. |

---

## 📈 Key Findings & Strategic Insights

The analysis identified critical operational performance metrics and strategic opportunities:

### High Volume, Significant Cancellations
*   Total bookings exceeded 100,000 (103,024) in July 2024, generating **₹35.08 million** in booking value. Successful bookings accounted for approximately 62% of the total.
*   The overall **cancellation rate is high at 28.08%** (28,933 canceled bookings), representing the most critical area for improvement.
    *   **Top Customer Cancellation Reasons:** Driver asked to cancel (25.43%) and Change of plans (19.82%).
    *   **Top Driver Cancellation Reason:** Personal and car-related issues (35.49%).

### Payment and Revenue Structure
*   There is a **strong preference for Cash Payments**, which dominates as the primary payment method, contributing the highest revenue share (approximately twice that of UPI and significantly more than card payments).
*   A small group of frequent users drives significant value; the **top 5 customers contributed over ₹32,000** in booking value combined.

### Vehicle and Service Quality
*   **E-Bike and Prime Sedan categories lead in total booking value** (~₹8.3M each).
*   Auto rides show noticeably shorter average distances (~6 km), consistent with their typical use case.
*   **High Customer and Driver Satisfaction** is consistent, with ratings across all vehicle types ranging robustly from 3.98 to 4.01 out of 5. This reflects excellent service quality and serves as a strong competitive advantage.

---

## 🚀 Next Steps and Future Actions

Targeted interventions derived from the analysis are necessary to boost successful bookings and profitability.

1.  **Reduce Cancellation Rate:** This is the biggest priority. Interventions should include enhanced vehicle checks, getting stricter with canceling drivers/customers, and improving driver training on vehicle maintenance (like ensuring AC functionality).
2.  **Promote Digital Payments:** Since cash payments are risky and costly, offering discounts or cashback on UPI/wallet payments should be implemented to gradually shift usage toward digital options.
3.  **Implement Loyalty Programs:** Create a simple loyalty program with free rides, priority bookings, or upgrades for high-value customers (like the top frequent users) to increase loyalty.
4.  **Strategic Fleet Expansion:** Add more vehicles in the high-performing E-Bike and Prime Sedan categories.
5.  **Future Machine Learning Integration:** Utilize the data gathered to build a machine learning model that predicts when and where demand will spike, enabling more intelligent driver allocation and reducing "driver not found" issues.

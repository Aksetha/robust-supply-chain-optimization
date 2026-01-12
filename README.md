# Strategic Optimization of Global Supply Chain Lead-Times
### A Robust Newsvendor Approach to Mitigating Tail-Risk Uncertainty

---

## 📌 Research Overview
Traditional inventory models often rely on "Average Lead Times," a strategy that fails during high-variance disruptions (e.g., port congestion, geopolitical shifts, or supply shocks). This project implements a **Prescriptive Analytics Engine** that moves beyond prediction to determine mathematically robust inventory buffers.

By applying a **Minimax Regret Framework** with **Asymmetric Cost Logic**, this engine optimizes supply chain nodes based on empirical lead-time volatility rather than assuming a standard normal distribution.

## 🚀 Key Results
* **55.3% Average Cost Reduction** compared to Naive (Mean-based) planning.
* **12.7% Performance Gain** over the Industry-Standard Service Level (Z-score) approach.
* **Statistically Validated:** Results confirmed via 1,000-cycle Bootstrap Resampling ($p < 0.05$).
* **Economic Impact:** Significant dollar-per-shipment savings identified across 20 high-risk global trade lanes.

## 🛠 Technical Methodology

### 1. Data Engineering & Risk Profiling
* **Database:** Structured a MySQL pipeline to profile 180,000+ historical records from the DataCo Global Supply Chain dataset.
* **Volatility Scan:** Engineered SQL queries to identify "High-Variance Nodes" using standard deviation and maximum observed delay as risk proxies.

### 2. Optimization Logic (Newsvendor Framework)
* **Asymmetric Costs:** Implemented a 10:1 Penalty-to-Holding cost ratio ($h=10, p=100$) to reflect the real-world impact of stockouts vs. overstock.
* **Three-Tier Strategy Comparison:**
    * **Naive:** Planning based on Sample Mean ($\mu$).
    * **Standard:** Parametric Safety Stock using Normal Distribution assumptions.
    * **Robust (Proposed):** Non-parametric optimization using Empirical 95th Percentiles ($Q_{95}$).

### 3. Statistical Rigor
* **Bootstrap Validation:** Used a 1,000-iteration bootstrap loop to generate 95% Confidence Intervals for cost savings, ensuring the model's robustness against sampling bias.

## 📂 Repository Structure
* **`database_setup.sql`**: Contains the SQL schema, data ingestion logic, and specialized Views for high-volatility risk profiling.
* **`LeadTime_Robustness_Analysis.ipynb`**: The core research notebook containing the Python implementation, mathematical modeling, and statistical validation.
* **`Robust_Supply_Chain_Report.csv`**: Detailed city-level optimization results, comparing Naive, Service-Level, and Robust buffers.
* **`Executive_Summary.csv`**: Aggregated KPIs across all analyzed trade lanes for high-level performance tracking.
* **`Optimization_Report.txt`**: A human-readable executive summary including strategic recommendations and top-performing nodes.
* **`Optimization_Results_Summary.png`**: High-resolution visualization comparing cost reduction percentages and absolute dollar savings across global cities.

## 📊 Visualizing the "Risk Zone"
The engine identifies the **Tail-Risk Zone** (delays exceeding the 90th percentile) and provides a buffer that minimizes the total expected "Economic Regret."

## 💻 Tech Stack
* **Languages:** Python (NumPy, Pandas, SciPy, Matplotlib, Seaborn), SQL
* **Infrastructure:** MySQL, SQLAlchemy
* **Concepts:** Operations Research, Stochastic Optimization, Bootstrap Resampling

---
*Developed as part of an independent research initiative focused on Resilient Logistics Systems.*

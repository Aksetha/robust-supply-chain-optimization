## 🎯 Project Goal
Traditional logistics planning relies on "Average Lead Times," which fails in high-volatility trade lanes. This project builds a robust engine to identify the mathematical "sweet spot" for delivery buffers—minimizing the cost of holding inventory vs. the cost of late penalties.

## 🛠️ Technical Components
* **MySQL Layer (`db_infrastructure.sql`):** Profiles shipment volatility ($\sigma$) across 180k rows to identify high-risk "Black Swan" cities.
* **Optimization Engine (`LeadTime_Robustness_Analysis.ipynb`):** A Python-based simulation that calculates the "Economic Regret" of different buffer decisions.
* **BI Layer (`Interactive_Dashboard.pbix`):** A stakeholder dashboard to visualize cost-response surfaces across 20+ global nodes.
**DataSet:**
* **Source:** [Kaggle - DataCo Smart Supply Chain](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-dataset)
* **Size:** 180,519 rows.

## 📈 Impact
* Identified that **Mexico City** and **Bangkok** require a 95th percentile buffer to minimize costs.
* Achieved a **54.7% reduction in expected regret costs** compared to naive average-based planning.

## 📋 Files in this Repo
* `LeadTime_Robustness_Analysis.ipynb`: Data cleaning, Math logic, and Plots.
* `db_infrastructure.sql`: MySQL View definitions for risk profiling.
* `Project_Report.pdf`: Formal methodology and executive summary.
* `Robust_Supply_Chain_Report.csv`: Final optimized buffer days for top 20 cities.

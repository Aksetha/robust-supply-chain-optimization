CREATE DATABASE IF NOT EXISTS project;
USE project;
CREATE INDEX idx_city_lookup ON shipments_robust(`Order City`);
CREATE OR REPLACE VIEW v_city_volatility_profile AS
SELECT 
    `Order City` AS City,
    COUNT(*) AS Shipments,                   
    ROUND(AVG(delay_days), 3) AS Avg_Delay,  
    ROUND(STDDEV(delay_days), 3) AS Sigma,   
    MAX(delay_days) AS Peak_Delay            -- Worst-case scenario recorded
FROM shipments_robust
GROUP BY `Order City`
HAVING Shipments > 500                       -- Filtering out low-volume noise
ORDER BY Sigma DESC;                         -- Prioritizing high-risk nodes

-- Quick scan of the top 10 'Black Swan' candidates
SELECT * FROM v_city_volatility_profile LIMIT 10;
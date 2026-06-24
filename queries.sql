
-- 1. Top 5 funds by AUM
SELECT amfi_code, aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;

-- 2. Expense ratio < 1%
SELECT amfi_code, expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1;

-- 3. Transaction count by type
SELECT transaction_type, COUNT(*) AS total_txn
FROM fact_transactions
GROUP BY transaction_type;

-- 4. Total investment amount by type
SELECT transaction_type, SUM(amount_inr) AS total_amount
FROM fact_transactions
GROUP BY transaction_type;

-- 5. Average NAV per fund
SELECT amfi_code, AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY amfi_code;

-- 6. Monthly NAV trend
SELECT strftime('%Y-%m', date) AS month, AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

-- 7. Top 5 funds by Sharpe ratio
SELECT amfi_code, sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC
LIMIT 5;

-- 8. Highest risk funds (std deviation)
SELECT amfi_code, std_dev_ann_pct
FROM fact_performance
ORDER BY std_dev_ann_pct DESC
LIMIT 5;

-- 9. Top funds by Alpha
SELECT amfi_code, alpha
FROM fact_performance
ORDER BY alpha DESC
LIMIT 5;

-- 10. Total transactions per fund
SELECT amfi_code, COUNT(*) AS txn_count
FROM fact_transactions
GROUP BY amfi_code
ORDER BY txn_count DESC
LIMIT 5;

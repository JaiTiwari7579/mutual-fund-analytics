
# DATA DICTIONARY - Mutual Fund Analytics Project

---

## 1. dim_fund
- amfi_code (INT): Unique fund identifier from AMFI
- scheme_name (TEXT): Name of mutual fund scheme
- fund_house (TEXT): Asset management company name
- category (TEXT): Equity / Debt / Hybrid etc.
- plan (TEXT): Growth / Dividend etc.

---

## 2. fact_nav
- amfi_code (INT): Fund identifier (FK → dim_fund)
- date (DATE): NAV date
- nav (FLOAT): Net Asset Value

Business Meaning: Daily NAV tracking of mutual funds

---

## 3. fact_transactions
- amfi_code (INT): Fund identifier
- transaction_date (DATE): Transaction date
- transaction_type (TEXT): SIP / LUMPSUM / REDEMPTION
- amount_inr (FLOAT): Investment amount in INR
- kyc_status (TEXT): Verified / Pending / Rejected

Business Meaning: Investor transaction records

---

## 4. fact_performance
- amfi_code (INT): Fund identifier
- return_1yr_pct (FLOAT): 1 Year return percentage
- return_3yr_pct (FLOAT): 3 Year return percentage
- return_5yr_pct (FLOAT): 5 Year return percentage
- expense_ratio_pct (FLOAT): Expense ratio in %
- aum_crore (FLOAT): Assets under management in crore
- alpha (FLOAT): Excess return over benchmark
- beta (FLOAT): Volatility vs market
- sharpe_ratio (FLOAT): Risk-adjusted return
- std_dev_ann_pct (FLOAT): Annual standard deviation
- max_drawdown_pct (FLOAT): Maximum loss from peak
- morningstar_rating (INT): Rating (1–5)
- risk_grade (TEXT): Low / Medium / High

Business Meaning: Fund performance & risk metrics

---

## Source:
All data is simulated/cleaned from AMFI-style mutual fund dataset for analytics practice project.

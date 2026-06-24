
CREATE TABLE dim_fund (
    amfi_code TEXT PRIMARY KEY,
    scheme_name TEXT,
    category TEXT
);

CREATE TABLE fact_nav (
    amfi_code TEXT,
    date TEXT,
    nav REAL
);

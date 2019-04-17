CREATE DATABASE twitter_stocks_db;
use twitter_stocks_db;

CREATE TABLE summary (
Ticker varchar(256),
Close_Price double,
Volume float,
Mkt_Cap INT,
EPS INT,
Earnings_Date INT
);

CREATE TABLE profile (
Ticker varchar(256),
Company_Name varchar(256),
Description blob,
Telephone INT,
Address varchar(256),
Key_Execs_Name varchar(256),
Key_Execs_Title varchar(256),
Key_Execs_Salary INT,
Mkt_Cap INT,
EPS INT,
Earnings_Date INT,
Web_URL varchar(256)
);

CREATE TABLE sustainability (
Ticker varchar(256),
Total_ESG_Score INT,
AVG_Perf_Env INT,
Social_Score INT,
Governance_Score INT
);

SELECT * FROM sustainability
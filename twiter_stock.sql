CREATE DATABASE twitter_stocks_db;
use twitter_stocks_db;

CREATE TABLE summary (
Ticker varchar(256) PRIMARY KEY,
Close_Price float,
Volume float,
Mkt_Cap float,
EPS float,
Earnings_Date float
);

CREATE TABLE profile (
Ticker varchar(256) PRIMARY KEY,
Company_Name varchar(256),
Description blob,
Telephone float,
Address varchar(256),
Key_Execs_Name varchar(256),
Key_Execs_Title varchar(256),
Key_Execs_Salary float,
Mkt_Cap float,
EPS float,
Earnings_Date float,
Web_URL varchar(256)
);

CREATE TABLE sustainability (
Ticker varchar(256) PRIMARY KEY,
Total_ESG_Score float,
AVG_Perf_Env float,
Social_Score float,
Governance_Score float
);


-- Testing
-- ALTER TABLE summary
-- MODIFY COLUMN Earnings_Date date;

SELECT * FROM sustainability
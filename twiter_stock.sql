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

ALTER TABLE summary
ADD CONSTRAINT stock_tickfk
FOREIGN KEY (Ticker)
REFERENCES profile(Ticker);

ALTER TABLE sustainability
ADD CONSTRAINT stock_tickfk_2
FOREIGN KEY (Ticker)
REFERENCES profile(Ticker);

-- Testing
-- ALTER TABLE summary
-- MODIFY COLUMN Earnings_Date date;



SELECT * FROM sustainability
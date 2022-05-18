# Hotel_Database
Developement of a SQL Hotels Database from the ground using Excel spreadsheets, for then analyse and visualize Hotel Booking data. 

Requirements: \
Build a visual data story or dashboard using Power BI to present to the stakeholders. 

Tools: \
- Data from Excel spreadsheets. \
- MSSMS (Microsoft SQL Server Management Studio). \
- Power BI. \
- Power Query. 

A) Data Pipeline: \
1 - Build a Database. \
2 - Develope the SQL query. \
3 - Conenct Power BI to the database. \
4 - Visualizations. \
5 - Summarize findings. 

B) SQL query's used: \
-- CREATING AN UNIFIED TEMP TABLE \
with all_hotels as ( \
select * from dbo.['2018$'] \
union  \
select * from dbo.['2019$'] \
union \
select * from dbo.['2020$'])

-- TOTAL REVENEU (delete hyphen for running the query) \
--select (stays_in_week_nights + stays_in_weekend_nights) * adr as reveneu from all_hotels

-- TOTAL HOTELS REVENEU BY YEARS (delete hyphen for running the query) \
--select arrival_date_year, hotel, \
--round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as reveneu_by_year \
--from all_hotels  \
--group by arrival_date_year, hotel

-- JOINING MARKET SEGMENT AND MEAL COST TABLES TO HOTELS \
select * from all_hotels \
--left join dbo.market_segment$ \
--on all_hotels.market_segment = market_segment$.market_segment \
--left join dbo.meal_cost$ \
--on all_hotels.meal = meal_cost$.meal


C) Business questions answered by the Dashboard: \
1 - "Is our hotel reveneu growing by year?" \
2 - "How many guests are coming back?" \
3 - "What is the market segmentation trend?" \
4 - "Wich are the countries who has the more reveneu over time?" \
5 - "What is the average discount by country?" \
6 - "Trend of Week Nights vs Weekend Nights" 

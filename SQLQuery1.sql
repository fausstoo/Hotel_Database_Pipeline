-- CREATING AN UNIFIED TEMP TABLE
with all_hotels as (
select * from dbo.['2018$']
union 
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

-- TOTAL REVENEU (delete hyphen for running the query)
--select (stays_in_week_nights + stays_in_weekend_nights) * adr as reveneu from all_hotels

-- TOTAL HOTELS REVENEU BY YEARS (delete hyphen for running the query)
--select arrival_date_year, hotel,
--round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as reveneu_by_year
--from all_hotels 
--group by arrival_date_year, hotel

-- JOINING MARKET SEGMENT AND MEAL COST TABLES TO HOTELS
select * from all_hotels
left join dbo.market_segment$
on all_hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on all_hotels.meal = meal_cost$.meal


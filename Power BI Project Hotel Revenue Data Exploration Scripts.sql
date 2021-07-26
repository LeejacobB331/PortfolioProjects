/*
Hotel Revenue Data Exploration
Queries for Power BI Project
*/

-- Temporary Table
WITH HOTEL AS (
SELECT * FROM dbo.['2018$']
union
SELECT * FROM dbo.['2018$']
union 
SELECT * FROM dbo.['2020$'] )

/*
Revenue Growth by Year and Hotel
SELECT 
arrival_date_year,
hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS Revenue 
FROM HOTEL
GROUP BY arrival_date_year,hotel
*/

--Table Joins
SELECT * FROM HOTEL
LEFT JOIN dbo.market_segment$ 
ON HOTEL.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON meal_cost$.meal = HOTEL.meal


WITH Hotels AS (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * FROM Hotels
LEFT JOIN dbo.market_segment$
ON Hotels.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON meal_cost$.meal = Hotels.meal

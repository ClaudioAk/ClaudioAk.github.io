
With Hotels As (
Select * from dbo.['2018$']
Union
Select * from dbo.['2019$']
Union
Select * from dbo.['2020$'])

Select * From Hotels
left join dbo.market_segment$
on Hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = Hotels.meal
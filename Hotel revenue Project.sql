WITH hotels AS (
SELECT * FROM hotel_revenue.hotel_revenue2018
UNION
SELECT * FROM hotel_revenue.hotel_revenue2019
UNION
SELECT * FROM hotel_revenue.hotel_revenue2020)

SELECT * FROM hotels
JOIN hotel_revenue.market_segment 
ON hotels.market_segment = hotel_revenue.market_segment.market_segment
JOIN hotel_revenue.meal_cost
ON hotel_revenue.meal_cost.meal = hotels.meal;
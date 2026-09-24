
SELECT *
FROM restaurants
WHERE rating > 4.5;

-- Task 2: Average order value less than 300
SELECT *
FROM restaurants
WHERE average_order_value < 300;

-- Task 3: Restaurants located in Pune
SELECT *
FROM restaurants
WHERE city = 'Pune';

-- Task 4: More than 20,000 orders
SELECT *
FROM restaurants
WHERE orders > 20000;

-- Task 5: Delivery time greater than 40 minutes
SELECT *
FROM restaurants
WHERE delivery_time > 40;

-- Task 6: Rating between 4.2 and 4.7
SELECT *
FROM restaurants
WHERE rating BETWEEN 4.2 AND 4.7;

-- Task 7: South Indian, Italian or Biryani cuisine
SELECT *
FROM restaurants
WHERE cuisine IN ('South Indian', 'Italian', 'Biryani');

-- Task 8: Owner name contains 'Patil'
SELECT *
FROM restaurants
WHERE owner LIKE '%Patil%';

-- Task 9: Brand matches restaurant name
SELECT *
FROM restaurants
WHERE brand = restaurant_name;

-- Task 10: Delivery fee less than 30
SELECT *
FROM restaurants
WHERE delivery_fee < 30;
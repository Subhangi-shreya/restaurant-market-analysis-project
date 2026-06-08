Part 6: SQL Analysis

-- Database Schema
CREATE TABLE Restaurants (
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100),
cuisine VARCHAR(255),
rating DECIMAL(2,1),
reviews VARCHAR(20),
cost_for_two INT,
locality VARCHAR(100),
delivery_time VARCHAR(20),
restaurant_type VARCHAR(50)
);

CREATE TABLE Menu_Items (
item_id INT PRIMARY KEY,
restaurant_id INT,
menu_category VARCHAR(100),
item_name VARCHAR(255),
price DECIMAL(10,2),
FOREIGN KEY (restaurant_id)
REFERENCES Restaurants(restaurant_id)
);

– SQL QUERIES

Query 1: Top 5 Highest Rated Restaurants
Answer - Select restaurant_name,rating From Restaurants
Order By rating DESC
Limit 5;

Query 2: Average Cost for Two by Cuisine
Answer - Select cuisine,
AVG(cost_for_two) as average_cost
From restaurants
Group by cuisine;

Query 3: Restaurants with More Than One Cuisine Tag
Answer - Select restaurant_name, cuisine
From Restaurants
Where cuisine LIKE '%,%';

Query 4: Highest Priced Menu Item
Answer - Select item_name, price
From Menu_Items
Order By price DESC
Limit 1;

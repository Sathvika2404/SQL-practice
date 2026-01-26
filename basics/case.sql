-- case

create table products
( productID int primary key,
productname varchar(50),
category varchar(20),
price DEcimal(10,2),
stockqunatity int,
supplier varchar(50),
rating decimal(3,1))

EXEC sp_rename 
    'products.stockqunatity',
    'StockQuantity',
    'COLUMN';


-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

select * from products

--Add a column to categorize each product into categories high, medium & low
select * ,
case
    when price >500 then 'high'
    when price<=500 and price >=200 then 'medium'
    else 'low'
end as [high/med/low]
from products

-- provide the priority to each category and sort the data according to that priority

select * from products
order by
case
    when category in ('Electronics') then 1
    when category in ('Furniture') then 2
    else 3
end

--Create a column called PriceCategory: < 20 → Cheap , 20–100 → Moderate ,> 100 → Expensive

select *,
case
    when price<20 then 'cheap'
    when price>=20 and price <100 then 'moderate'
    else 'expensive' 
end as [PriceCategory]
from products

--Rules: Electronics with rating ≥ 4.6 → High Priority, Furniture with stock < 60 → Restock Soon, Everything else → Normal

select *, 
case
    when category in ('Electronics') and rating>=4.6 then 'High Priority'
    when category in ('Furniture') and stockQuantity<60 then 'restock soon'
    else 'normal'
end as [Product Priority]
from products

--Count products by price range
select 
sum(case when price<50 then 1 else 0 end) as 'cheap products',
sum(case when price>=50 and price < 150 then 1 else 0 end) as 'medium',
sum( case when price>=150 then 1 else 0 end) as 'expensive'
from products 
    


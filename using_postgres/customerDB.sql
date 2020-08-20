CREATE TABLE CustomerInfo(cust_id VARCHAR(10) PRIMARY KEY,cust_name VARCHAR(22),
						  cust_segment VARCHAR(18),cust_age INT,
						  cust_country VARCHAR(22),cust_city VARCHAR(22),
						  cust_state VARCHAR(25),cust_postal_code INT,
						  cust_region VARCHAR(10));
						  
-- loading the data from the csv file
COPY CustomerInfo(cust_id, cust_name, cust_segment, cust_age, cust_country,
				 cust_city, cust_state, cust_postal_code, cust_region) 
FROM 'C:\Program Files\PostgreSQL\11\data\copy_from_here\Customer.csv'
DELIMITER ',' CSV HEADER; 

-- Creating Products Table
CREATE TABLE ProductInfo(prod_id VARCHAR(25) PRIMARY KEY, prod_category VARCHAR(20),
						 prod_sub_category VARCHAR(20),prod_name VARCHAR(150));

-- loading the data from the csv file
COPY ProductInfo(prod_id, prod_category, prod_sub_category, prod_name) 
FROM 'C:\Program Files\PostgreSQL\11\data\copy_from_here\Product.csv'
DELIMITER ',' CSV HEADER; 

-- Creating Sales Table
CREATE TABLE SalesInfo(order_line SERIAL, order_id VARCHAR(20), order_date DATE,
					   ship_date DATE, ship_mode VARCHAR(15), customer_id VARCHAR(10), 
					   product_id VARCHAR(20), sales_amt NUMERIC(10,4), sales_qty INT, 
					   sales_discount NUMERIC(3,2), sales_profit NUMERIC(8,4));

-- loading the data from the csv file
COPY SalesInfo(order_line,order_id,order_date,ship_date,ship_mode,customer_id,product_id,
			   sales_amt,sales_qty,sales_discount,sales_profit) 
FROM 'C:\Program Files\PostgreSQL\11\data\copy_from_here\Sales.csv'
DELIMITER ',' CSV HEADER; 
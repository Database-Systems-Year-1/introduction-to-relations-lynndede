CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
2. Insert Data into the Tables
sql
Copy code
INSERT INTO customers (customer_id, customer_name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com');

INSERT INTO products (product_id, product_name, price)
VALUES (1, 'Laptop', 999.99),
       (2, 'Smartphone', 499.99);

INSERT INTO orders (order_id, customer_id, product_id, order_date)
VALUES (1, 1, 1, '2024-09-09'),
       (2, 2, 2, '2024-09-10');
3. Select Data from the Tables
sql
Copy code
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
4. Update Data in a Table
sql
Copy code
UPDATE customers
SET email = 'john.doe@newdomain.com'
WHERE customer_id = 1;
5. Add, Alter, and Drop Columns
Add a Column:
sql
Copy code
ALTER TABLE products ADD stock_quantity INT;
Alter a Column:
sql
Copy code
ALTER TABLE products MODIFY price DECIMAL(12, 2);
Drop a Column:
sql
Copy code
ALTER TABLE products DROP COLUMN stock_quantity;
6. Delete a Table
sql
Copy code
DROP TABLE orders;
Let me know if you need help wes (sales).
sql
Copy code
CREATE TABLE dealers (
    dealer_id INT PRIMARY KEY,
    dealer_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE cars (
    car_id INT PRIMARY KEY,
    model VARCHAR(100),
    brand VARCHAR(100),
    year INT,
    price DECIMAL(10, 2),
    dealer_id INT,
    FOREIGN KEY (dealer_id) REFERENCES dealers(dealer_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    car_id INT,
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);
2. Insert Data into the Tables
sql
Copy code
INSERT INTO dealers (dealer_id, dealer_name, location)
VALUES (1, 'Fast Wheels', 'New York'),
       (2, 'AutoMart', 'Los Angeles');

INSERT INTO cars (car_id, model, brand, year, price, dealer_id)
VALUES (1, 'Civic', 'Honda', 2020, 20000, 1),
       (2, 'Mustang', 'Ford', 2021, 30000, 2),
       (3, 'Model S', 'Tesla', 2023, 80000, 1);

INSERT INTO sales (sale_id, car_id, sale_date, sale_price)
VALUES (1, 1, '2024-09-01', 19000),
       (2, 2, '2024-09-02', 29000);
3. Select Data from the Tables
sql
Copy code
SELECT * FROM dealers;
SELECT * FROM cars;
SELECT * FROM sales;
4. Update Data in a Table
Let's say you want to update the price of the Tesla Model S.

sql
Copy code
UPDATE cars
SET price = 75000
WHERE car_id = 3;
5. Add, Alter, and Drop Columns
Add a Column (e.g., adding a column to the cars table to track mileage):
sql
Copy code
ALTER TABLE cars ADD mileage INT;
Alter a Column (e.g., modify the price column to allow higher precision):
sql
Copy code
ALTER TABLE cars MODIFY price DECIMAL(12, 2);
Drop a Column (e.g., removing the mileage column):
sql
Copy code
ALTER TABLE cars DROP COLUMN mileage;
6. Delete a Table
If you want to delete the sales table:

sql
Copy code
DROP TABLE sales;











DROP TABLE sales;
CREATE table sales (
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR (10),
PRIMARY KEY (purchase_number)
); 

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;


CREATE TABLE customers
(
	customer_id INT,
    first_name VARCHAR (255),
    last_name VARCHAR (255),
    email_address VARCHAR (255),
    number_of_complaints INT DEFAULT 0,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);
 
 

 CREATE TABLE items
 (
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255) 
    );
    
    

CREATE TABLE companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12)
);

CREATE TABLE EMPLOYEE (
  employee_id SMALLINT NOT NULL PRIMARY KEY,
  last_name VARCHAR(15),
  first_name VARCHAR(15),
  middle_initial VARCHAR(1),
  manager_id SMALLINT,
  job_id SMALLINT,
  hire_date DATE,
  salary NUMERIC(7,2),
  commission NUMERIC(7,2),
  department_id SMALLINT  );

CREATE TABLE DEPARTMENT (
  department_id SMALLINT NOT NULL PRIMARY KEY,
  name VARCHAR(14),
  location_id SMALLINT );


CREATE TABLE LOCATION (
  location_id SMALLINT NOT NULL PRIMARY KEY,
  regional_group VARCHAR(20) );

CREATE TABLE JOB  (
  job_id SMALLINT NOT NULL PRIMARY KEY,
  function VARCHAR(30) );

CREATE TABLE CUSTOMER (
  customer_id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(45),
  address VARCHAR(40),
  city VARCHAR(30),
  state VARCHAR(2),
  zip_code VARCHAR(9),
  area_code SMALLINT,
  phone_number INTEGER,
  salesperson_id SMALLINT,
  credit_limit NUMERIC(9,2), 
  comments VARCHAR(500) );

CREATE TABLE SALES_ORDER (
  order_id SMALLINT NOT NULL PRIMARY KEY,
  order_date DATE,
  customer_id INTEGER,
  ship_date DATE,
  total NUMERIC(8,2) );

CREATE TABLE ITEM (
  order_id SMALLINT NOT NULL,
  item_id SMALLINT NOT NULL,
  product_id INTEGER,
  actual_price NUMERIC(8,2),
  quantity INTEGER,
  total NUMERIC(8,2),
PRIMARY KEY (order_id,item_id)
);

CREATE TABLE PRODUCT (
  product_id INTEGER NOT NULL PRIMARY KEY,
  description VARCHAR(30) );

CREATE TABLE PRICE (
  product_id INTEGER NOT NULL,
  list_price NUMERIC(8,2),
  min_price NUMERIC(8,2),
  start_date DATE NOT NULL,
  end_date DATE,
  PRIMARY KEY (product_id,start_date)
);



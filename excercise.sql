-- users table
CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL
)
-- restaurant table
CREATE TABLE restaurant (
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(255),
	image VARCHAR(255),
	description TEXT
)

-- rate_res table
CREATE TABLE rate_res (
	rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	amount INT,
	date_rate DATE
)

-- like_res table
CREATE TABLE like_res (
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	date_like DATE
)

-- food_type table
CREATE TABLE food_type (
	type_id INT PRIMARY KEY AUTO_INCREMENT,
	type_name VARCHAR(255) Not null
)

-- food table
CREATE TABLE food (
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(255) Not null,
	image VARCHAR(255),
	price FLOAT,
	description TEXT,
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type(type_id)
)

-- order
CREATE TABLE orders (
	orders_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES food(food_id),
	amount INT,
	code VARCHAR(255),
	arr_sub_id VARCHAR(255)
)

-- sub_food
CREATE TABLE sub_food (
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
	sub_name VARCHAR(255) NOT NULL,
	sub_price FLOAT,
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES food(food_id)
)

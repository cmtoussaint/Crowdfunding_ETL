DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category (
  	category_id VARCHAR NOT NULL PRIMARY KEY, 
  	category VARCHAR(20) NOT NULL 
);

CREATE TABLE subcategory (
  	subcategory_id VARCHAR NOT NULL PRIMARY KEY, 
  	subcategory VARCHAR(20) NOT NULL  	
);

CREATE TABLE contacts (
  	contact_id INT NOT NULL PRIMARY KEY, 
  	first_name VARCHAR(20) NOT NULL, 
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL
); 

CREATE TABLE campaign (
  	cf_id INT NOT NULL PRIMARY KEY,
  	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL, 
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	end_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  	FOREIGN KEY (category_id) REFERENCES category(category_id), 
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT *
FROM campaign

SELECT *
FROM category

SELECT *
FROM contacts

SELECT *
FROM subcategory

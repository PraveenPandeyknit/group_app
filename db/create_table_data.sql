CREATE TABLE employees (  
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
name VARCHAR (20) NOT NULL, 
department_id  INT,
email varchar(25),  
address CHAR (25),
created_at timestamp NOT NULL DEFAULT current_timestamp,
updated_at timestamp NOT NULL DEFAULT current_timestamp 
); 
CREATE TABLE departments (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (20) NOT NULL,
description varchar(25),
created_at timestamp NOT NULL DEFAULT current_timestamp,
updated_at timestamp NOT NULL DEFAULT current_timestamp 
);
CREATE TABLE groups (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (20) NOT NULL,
round_number INT,
participants varchar(155),
round_started_on timestamp,
created_at timestamp NOT NULL DEFAULT current_timestamp,
updated_at timestamp NOT NULL DEFAULT current_timestamp 
);
CREATE TABLE employees_groups (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
employee_id VARCHAR (20) NOT NULL,
group_id INT,
created_at timestamp NOT NULL DEFAULT current_timestamp,
updated_at timestamp NOT NULL DEFAULT current_timestamp 
);

INSERT INTO employees (name,department_id, email, address) VALUES ("Name One",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name two",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name three",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name four",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name five",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name six",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name seven",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name eight",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name nine",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name ten",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 1",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 2",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 3",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 4",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 5",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 6",1, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 7",2, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 8",3, "value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 9", 1,"value2@mail.com", "value3");
INSERT INTO employees (name,department_id, email, address) VALUES ("Name 10",2, 3,"value2@mail.com", "value3");

INSERT INTO departments (name, description) VALUES ("Dep one", "IT department");
INSERT INTO departments (name, description) VALUES ("Dep two", "HR department");
INSERT INTO departments (name, description) VALUES ("Dep three", "Tech support department");
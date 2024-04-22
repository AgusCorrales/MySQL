CREATE DATABASE my_company_database;

use my_company_database;

CREATE TABLE users(
id INT AUTO_INCREMENT,
birth_date DATE,
first_name VARCHAR(100),
last_name VARCHAR(100),
gender VARCHAR(100),
PRIMARY KEY (id)
);
ALTER TABLE users ADD salary FLOAT;
ALTER TABLE users ADD title VARCHAR(100);
ALTER TABLE users ADD title_date YEAR;
 
INSERT INTO users (birth_date, first_name, last_name, gender, salary, title, title_date)
values ('1990-05-15', 'Juan', 'García', 'Masculino', 20000.00, 'Ingeniero de Software', 2020),
    ('1985-09-20', 'María', 'Rodríguez', 'Femenino', 15000.00, 'Analista de Datos', 2020),
    ('1988-12-10', 'Juan', 'Martínez', 'Musersusersasculino', 25000.00, 'Diseñador Gráfico', 2020),
    ('1992-03-25', 'Pedro', 'López', 'Masculino', 10000.00, 'Desarrollador Web', 2019),
    ('1991-07-18', 'Ana', 'Pérez', 'Femenino', 35000.00, 'Ingeniero de Sistemas', 2020),
    ('1987-11-05', 'Luis', 'García', 'Masculino', 8000.00, 'Gerente de Proyecto', 2020),
    ('1993-02-28', 'Marta', 'Martínez', 'Femenino', 30000.00, 'Analista de Negocios', 2020),
    ('1989-08-14', 'Carlos', 'González', 'Masculino', 45000.00, 'Arquitecto de Software', 2018),
    ('1995-04-30', 'Laura', 'Pérez', 'Femenino', 7000.00, 'Diseñador UX/UI', 2020),
    ('1986-06-12', 'Juan', 'García', 'Masculino', 18000.00, 'Ingeniero de Software', 2018),
    ('1984-10-08', 'Juan', 'García', 'Masculino', 22000.00, 'Ingeniero de Software', 2017),
    ('1990-09-15', 'Sofía', 'Rodríguez', 'Femenino', 28000.00, 'Analista de Datos', 2019),
    ('1989-03-20', 'María', 'Martínez', 'Femenino', 10000.00, 'Desarrollador Web', 2020),
    ('1983-07-25', 'Andrés', 'Pérez', 'Masculino', 40000.00, 'Ingeniero de Sistemas', 2017),
    ('1994-11-18', 'Elena', 'García', 'Femenino', 6000.00, 'Diseñador Gráfico', 2020);
SELECT * FROM users;

UPDATE users SET first_name = 'Victoria' WHERE id = 7;

SELECT first_name FROM users;

SELECT * FROM users WHERE salary > 20000;
SELECT * FROM users WHERE salary < 10000;
SELECT * FROM users WHERE salary BETWEEN 14000 AND 50000;

SELECT COUNT(id) FROM users;

SELECT title FROM users WHERE title_date = 2019;
SELECT UCASE(first_name), LCASE(last_name) FROM users;
SELECT DISTINCT first_name FROM users;

DELETE FROM users WHERE id = 5;
SELECT * FROM users;
set sql_safe_updates = 0;
DELETE FROM users WHERE salary > 20000;
set sql_safe_updates = 1;
SELECT * FROM users;




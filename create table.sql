CREATE DATABASE homework3;

USE homework3;

CREATE TABLE salespeople
(
snum INT PRIMARY KEY UNIQUE,
sname CHAR(10) NOT NULL,
city CHAR(10) NOT NULL,
comm DECIMAL(5,2) NOT NULL
);

INSERT INTO salespeople(snum, sname, city, comm)
VALUES
(1001, "Peel", "London", 0.12),
(1002, "Serres", "San Jose", 0.13),
(1004, "Motika", "London", 0.11),
(1007, "Rifkin", "Barcelona", 0.15),
(1003, "Axelrod", "New York", 0.10);


CREATE TABLE customers
(
cnum INT PRIMARY KEY UNIQUE,
cname CHAR(10) NOT NULL,
city CHAR(10) NOT NULL,
rating INT NOT NULL,
snum INT,
FOREIGN KEY (snum)  REFERENCES salespeople (snum)
);

INSERT INTO customers(cnum, cname, city, rating, snum)
VALUES
(2001, "Hoffman", "London", 100, 1001),
(2002, "Giovanni", "Rome", 200, 1003),
(2003, "Liu", "SanJose", 200, 1002),
(2004, "Grass", "Berlin", 300, 1002),
(2006, "Clemens", "London", 100, 1001),
(2008, "Cisneros", "SanJose", 300, 1007),
(2007, "Pereira", "Rome", 100, 1004);


CREATE TABLE orders
(
onum INT PRIMARY KEY UNIQUE,
amt DECIMAL(7,2) NOT NULL,
odate DATE NOT NULL,
cnum INT,
snum INT,
FOREIGN KEY (cnum)  REFERENCES customers (cnum),
FOREIGN KEY (snum)  REFERENCES salespeople (snum)
);

INSERT INTO orders(onum, amt, odate, cnum, snum)
VALUES
(3001, 18.69, '1990-03-10', 2008, 1007),
(3003, 767.19, '1990-03-10', 2001, 1001),
(3002, 1900.10, '1990-03-10', 2007, 1004),
(3005, 5160.45, '1990-03-10', 2003, 1002),
(3006, 1098.16, '1990-03-10', 2008, 1007),
(3009, 1713.23, '1990-04-10', 2002, 1003),
(3007, 75.75, '1990-04-10', 2004, 1002),
(3008, 4723.00, '1990-05-10', 2006, 1001),
(3010, 1309.95, '1990-06-10', 2004, 1002),
(3011, 9891.88, '1990-06-10', 2006, 1001);
-- create a table
CREATE TABLE Products (
  ProductID INTEGER PRIMARY KEY,
  ProductName TEXT NOT NULL
);
CREATE TABLE ProductsPrice (
  ProductID INTEGER PRIMARY KEY,
  ProductPrice double NOT NULL
);

-- insert some values
INSERT INTO Products (ProductName) VALUES ('Apple'),('Banana'),('Cucumber'),('Watermelon'),('Ice-cream'),('Orange'),('Eggplant'),('Egg');
INSERT INTO ProductsPrice (ProductPrice) VALUES ('10.0'),('2.1'),('5.5'),('20.0'),('0.5'),('0.8'),('2.0'),('40.0');

-- Question 1
SELECT COUNT(ProductName)
FROM Products;

-- Question 2

-- Fetch Product Price
SELECT ProductID
FROM ProductsPrice
WHERE ProductPrice = (SELECT MIN(ProductPrice) FROM ProductsPrice);

-- Fetch Product Name
SELECT ProductName
FROM Products
WHERE ProductID = (SELECT ProductID
FROM ProductsPrice
WHERE ProductPrice = (SELECT MIN(ProductPrice) FROM ProductsPrice));

-- Question 3
SELECT COUNT(ProductPrice)
FROM ProductsPrice
WHERE ProductPrice < 5;
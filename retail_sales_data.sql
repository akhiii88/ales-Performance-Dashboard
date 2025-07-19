
-- Sample Retail Sales Data
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Sample Data
INSERT INTO Customers VALUES
(1, 'Alice', 'North'), (2, 'Bob', 'South'), (3, 'Charlie', 'East');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Phone', 'Electronics', 800.00),
(103, 'Desk', 'Furniture', 250.00);

INSERT INTO Orders VALUES
(1001, 1, 101, '2021-01-10', 2),
(1002, 2, 102, '2021-02-15', 1),
(1003, 3, 103, '2021-03-20', 3);

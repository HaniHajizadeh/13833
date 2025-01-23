
CREATE DATABASE PhonePrices;
USE PhonePrices;
CREATE TABLE Phones (
    PhoneID INT PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    ReleaseYear INT
);
CREATE TABLE Prices (
    PriceID INT PRIMARY KEY,
    PhoneID INT,
    Price DECIMAL(10, 2),
    Currency VARCHAR(10),
    PriceDate DATE,
    FOREIGN KEY (PhoneID) REFERENCES Phones(PhoneID)
);
INSERT INTO Phones (PhoneID, Manufacturer, Model, ReleaseYear)
VALUES
(1, 'Apple', 'iPhone 13', 2021),
(2, 'Samsung', 'Galaxy S21', 2021),
(3, 'Google', 'Pixel 6', 2021),
(4, 'OnePlus', 'OnePlus 9', 2021);
INSERT INTO Prices (PriceID, PhoneID, Price, Currency, PriceDate)
VALUES
(1, 1, 799.99, 'USD', '2021-09-24'),
(2, 2, 699.99, 'USD', '2021-01-14'),
(3, 3, 599.99, 'USD', '2021-10-28'),
(4, 4, 729.99, 'USD', '2021-03-23');
SELECT p.Manufacturer, p.Model, pr.Price, pr.Currency, pr.PriceDate
FROM Phones p
JOIN Prices pr ON p.PhoneID = pr.PhoneID;
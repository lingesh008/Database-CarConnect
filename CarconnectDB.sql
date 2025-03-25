-- Create Database
CREATE DATABASE CarConnect;
GO

-- Use the Database
USE CarConnect;
GO

-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1)PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(254),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    RegistrationDate DATE
)


-- Create Vehicle Table
CREATE TABLE Vehicle (
    VehicleID INT IDENTITY(1,1) PRIMARY KEY,
    Model VARCHAR(50),
    Make VARCHAR(50),
    Year INT,
    Color VARCHAR(50),
    RegistrationNumber VARCHAR(50) UNIQUE,
    Availability BIT,
    DailyRate DECIMAL(10,2)
)

-- Create Reservation Table
CREATE TABLE Reservation (
    ReservationID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    StartDate DATETIME,
    EndDate DATETIME,
    TotalCost DECIMAL(10,2),
    Status VARCHAR(20) CHECK (Status IN ('Pending', 'Confirmed', 'Completed')),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
)


-- Create Admin Table
CREATE TABLE Admin (
    AdminID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(50),
    JoinDate DATE
)
select*from Customer
select*from Vehicle
select*from Reservation
select*from Admin

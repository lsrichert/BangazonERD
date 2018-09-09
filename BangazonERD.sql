CREATE TABLE `Employees` (
	`EmployeeId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`DepartmentId`	INTEGER NOT NULL,
	`FirstName`	TEXT NOT NULL,
	`LastName`	TEXT NOT NULL,
	`Supervisor`	TEXT NOT NULL
);
CREATE TABLE `TrainingPrograms` (
`TrainingProgramId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`StartDate` INTEGER NOT NULL,
`EndDate` INTEGER NOT NULL,
`MaximumAttendees`  INTEGER NOT NULL
);
CREATE TABLE `Departments` (
`DepartmentId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`ExpenseBudget` INTEGER NOT null
);
CREATE TABLE `Computers` (
	`ComputerId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`PurchaseDate`	INTEGER NOT NULL,
	`DecommissionDate`	INTEGER,
	`AssignmentStartDate`	INTEGER,
	`AssignmentEndDate`	INTEGER
);
CREATE TABLE `EmpTrainingPrograms` (
	`EmpTrainingProgramId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`EmployeeId`	INTEGER NOT NULL,
	`TrainingProgramId`	INTEGER NOT NULL
);
CREATE TABLE `EmployeeComputers` (
	`EmpComputerId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`EmployeeId`	INTEGER NOT NULL,
	`ComputerId`	INTEGER NOT NULL
);
CREATE TABLE `Products` (
`ProductId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`CustomerId` INTEGER NOT NULL ,
`Title` TEXT NOT NULL,
`Price` DOUBLE NOT NULL,
`Description` TEXT NOT NULL,
`Qty` INTEGER NOT null
);
CREATE TABLE `PaymentTypes` (
`PaymentTypeId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`CustomerId` INTEGER NOT NULL,
`PaymentName` TEXT NOT NULL,
`AccountNumber` INTEGER NOT NULL 
);
CREATE TABLE `Customers` (
`CustomerId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`FirstName` TEXT NOT NUll,
`LastName` TEXT NOT NULL,
`RegistrationDate` INTEGER NOT NULL,
`LastLoginDate` INTEGER NOT NULL 
);
CREATE TABLE `ProductOrder` (
`ProductOrderId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`ProductId` INTEGER NOT NULL,
`OrderId` INTEGER NOT null
);
CREATE TABLE `Orders` (
`OrderId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`CustomerId` INTEGER NOT NULL,
`PaymentTypeId` INTEGER NOT NULL
);
CREATE TABLE `Product Types` (
`ProductTypeId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`Name` STRING NOT NULL
);
CREATE TABLE `Computers` (
`ComputerId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
`PurchaseDate` STRING NOT NULL,
`DecommissionDate` STRING,
`AssignmentStartDate` STRING,
`AssignmentEndDate` STRING
);
INSERT INTO Computers (PurchaseDate)
VALUES ("2015-09-01")
;
INSERT INTO Computers (PurchaseDate, AssignmentStartDate, AssignmentEndDate)
VALUES ("2014-03-15", "2014-04-01", "2015-12-10")
;
INSERT INTO Computers (PurchaseDate,AssignmentStartDate)
VALUES ("2018-05-01", "2018-05-15")
;
INSERT INTO Departments (Name, ExpenseBudget)
VALUES ("Human Resources", 3500.00)
;
INSERT INTO Departments (Name, ExpenseBudget)
VALUES ("Marketing", 5000.00)
;
INSERT INTO Departments (Name, ExpenseBudget)
VALUES ("Purchasing", 2000.00)
;
INSERT INTO Customers (FirstName, LastName, RegistrationDate, LastLoginDate)
VALUES ("Serena", "Williams,", "2012-03-13", "2018-08-25")
;
INSERT INTO Customers (FirstName, LastName, RegistrationDate, LastLoginDate)
VALUES ("Naomi", "Osaka", "2015-06-30", "2018-02-20")
;
INSERT INTO Customers (FirstName, LastName, RegistrationDate, LastLoginDate)
VALUES ("Sloane", "Stephens", "2018-01-15", "2018-02-14")
;
INSERT INTO Employees (DepartmentId, FirstName, LastName, Supervisor)
VALUES (1, "Denise", "Henry", 1)
;
INSERT INTO Employees (DepartmentId, FirstName, LastName, Supervisor)
VALUES (3, "Lucy", "Davis", 0)
;
INSERT INTO Employees (DepartmentId, FirstName, LastName, Supervisor)
VALUES (2, "Elizabeth", "Barnett", 0)
;
INSERT INTO Orders (CustomerId, PaymentTypeId)
VALUES (1, 1)
;
INSERT INTO Orders (CustomerId, PaymentTypeId)
VALUES (4, 2)
;
INSERT INTO Orders (CustomerId, PaymentTypeId)
VALUES (5, 1)
;
INSERT INTO PaymentTypes (CustomerId, PaymentName, AccountNumber)
VALUES (1, "Visa", 138577)
;
INSERT INTO PaymentTypes (CustomerId, PaymentName, AccountNumber)
VALUES (4, "MasterCard", 894785)
;
INSERT INTO ProductTypes (Name)
VALUES ("Toys")
;
INSERT INTO ProductTypes (Name)
VALUES ("Electronics")
;
INSERT INTO ProductTypes (Name)
VALUES ("Outdoor")
;
INSERT INTO Products (ProductTypeId, CustomerId, Title, Description, Price, Qty)
VALUES (1, 1, "Teddy Ruxpin", "Stuffed Bear", 14.00, 5)
;
INSERT INTO Products (ProductTypeId, CustomerId, Title, Description, Price, Qty)
VALUES (2, 4, "Samsung 50 TV", "Color TV HD", 1800.00, 8)
;
INSERT INTO Products (ProductTypeId, CustomerId, Title, Description, Price, Qty)
VALUES (3, 1, "Kelty 4-Person", "Tent", 259.00, 3)
;
INSERT INTO TrainingPrograms (Name, StartDate, EndDate, MaximumAttendees)
VALUES ("Product Knowledge", "2018-11-14", "2018-11-30", 20)
;
INSERT INTO TrainingPrograms (Name, StartDate, EndDate, MaximumAttendees)
VALUES ("Workplace Harrassment", "2018-10-15", "2018-10-30", 25)
;
INSERT INTO TrainingPrograms (Name, StartDate, EndDate, MaximumAttendees)
VALUES ("Customer Service", "2018-09-01", "2018-09-15", 22)
;





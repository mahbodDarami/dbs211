--Mahbod Darami – 117135244      DBMS for a GROCERY STORE 

create table Customers(
customerID char(5) PRIMARY key,
CustName varchar(50) not null,
CustPhone char(10) not null,
CustAddress varchar(100) not null)

create table Employees(
EmpID char(6) PRIMARY key,
EmpName varchar(50) not null,
Salary number(10) not null,
Email varchar(60) not null,
Address varchar(150) not null,
EmpPhone  char(10) not null
)

create table Suppliers (
SupplierID char(5) PRIMARY key,
SupAddress varchar(150) not null,
SupPhonNumber number(10) not null,
SupName  varchar(60) not null
)

create table Orders (
OrderID char(6) PRIMARY key,
EmpID char(6) not null,
customerID  char(5) not null,
OrderDate   date not null,
CONSTRAINT fk_empid FOREIGN key(EmpID) REFERENCES Employees(EmpID),
CONSTRAINT fk_custID FOREIGN key(customerID) REFERENCES Customers(customerID)  
)

create table Products (
ProductID char(6) PRIMARY key,
SupplierID char(5) not null,
ProductCLass  char(6) not null,
MadeBy   varchar(30) not null,
CONSTRAINT fk_supID FOREIGN key(SupplierID) REFERENCES Suppliers(SupplierID) 
)


create table OrderDetails (
OrderID char(6) ,
ProductID char(6) not null,
Quantity  number(10) not null,
PurchasePrice   number(10) not null,
CONSTRAINT pk_ProductID PRIMARY KEY (OrderID, ProductID),
CONSTRAINT fk_OrderID FOREIGN key(OrderID) REFERENCES Orders(OrderID), 
CONSTRAINT fk_ProductID FOREIGN key(ProductID) REFERENCES Products(ProductID) 
)


INSERT INTO Customers VALUES ('C0001', 'Ali Rezaei', '4161234567', '12 Main St, Toronto');
INSERT INTO Customers VALUES ('C0002', 'Sara Ahmadi', '6472345678', '78 King St, Richmond Hill');
INSERT INTO Customers VALUES ('C0003', 'John Smith', '9053456789', '100 Queen St, Markham');
INSERT INTO Customers VALUES ('C0004', 'M Brown', '4371234567', '22 Elm St, Toronto');
INSERT INTO Customers VALUES ('C0005', 'Emily White', '2891239876', '9 Maple Ave, Vaughan');
INSERT INTO Customers VALUES ('C0006', 'David Kim', '4169998888', '45 Finch Ave, North York');
INSERT INTO Customers VALUES ('C0007', 'Sophie Green', '9054561234', '73 Yonge St, Aurora');
INSERT INTO Customers VALUES ('C0008', 'Noah Taylor', '6474567890', '30 Weston Rd, Etobicoke');
INSERT INTO Customers VALUES ('C0009', 'Olivia Martin', '4163214567', '16 Wilson Ave, Toronto');
INSERT INTO Customers VALUES ('C0010', 'James Lee', '9051237890', '88 Don Mills Rd, Toronto');


INSERT INTO Employees VALUES ('E00001', 'Mary Johnson', 52000, 'mary.j@store.com', '25 Bayview Ave, Toronto', '4169876543');
INSERT INTO Employees VALUES ('E00002', 'Reza Hosseini', 60000, 'reza.h@store.com', '45 Sheppard Ave, North York', '6471234567');
INSERT INTO Employees VALUES ('E00003', 'Anita Patel', 48000, 'anita.p@store.com', '19 Lawrence Ave, Scarborough', '4164567890');
INSERT INTO Employees VALUES ('E00004', 'Kevin Wu', 54000, 'kevin.w@store.com', '99 Leslie St, Toronto', '9052345678');
INSERT INTO Employees VALUES ('E00005', 'Sophia Tran', 50000, 'sophia.t@store.com', '33 Bloor St, Toronto', '2891112222');
INSERT INTO Employees VALUES ('E00006', 'Daniel Chen', 58000, 'daniel.c@store.com', '17 Kipling Ave, Etobicoke', '4377890123');
INSERT INTO Employees VALUES ('E00007', 'Jessica Wang', 62000, 'jessica.w@store.com', '2 Dufferin St, Toronto', '4161122334');
INSERT INTO Employees VALUES ('E00008', 'Ahmed Khan', 55000, 'ahmed.k@store.com', '12 Keele St, North York', '6474455667');
INSERT INTO Employees VALUES ('E00009', 'Fatemeh Rahimi', 53000, 'fatemeh.r@store.com', '14 Jane St, Vaughan', '9059990001');
INSERT INTO Employees VALUES ('E00010', 'Jason Brown', 61000, 'jason.b@store.com', '80 Steeles Ave, Toronto', '4166767676');


INSERT INTO Suppliers VALUES ('S0001', '200 Warehouse Blvd, Mississauga', 9051234567, 'FreshFarms Ltd.');
INSERT INTO Suppliers VALUES ('S0002', '300 Industrial Rd, Vaughan', 9059876543, 'Organic Goods Inc.');
INSERT INTO Suppliers VALUES ('S0003', '150 Produce St, Toronto', 4162223333, 'Green Market Co.');
INSERT INTO Suppliers VALUES ('S0004', '75 Fruitland Rd, Hamilton', 9054445555, 'Ontario Fruits Inc.');
INSERT INTO Suppliers VALUES ('S0005', '90 Fishery Rd, Ajax', 9058889999, 'OceanCatch Ltd.');
INSERT INTO Suppliers VALUES ('S0006', '210 Meat St, Toronto', 4166667777, 'Prime Butchers');
INSERT INTO Suppliers VALUES ('S0007', '130 Herb St, Oakville', 2891112222, 'Nature Herbs');
INSERT INTO Suppliers VALUES ('S0008', '145 Bakery Rd, Milton', 9051122334, 'Daily Breads Co.');
INSERT INTO Suppliers VALUES ('S0009', '67 Beverage Lane, Brampton', 9052233445, 'CoolDrinks Inc.');
INSERT INTO Suppliers VALUES ('S0010', '33 Egg St, Newmarket', 9053344556, 'Golden Eggs Inc.');


INSERT INTO Products VALUES ('P00001', 'S0001', 'Dairy', 'FreshFarms Ltd.');
INSERT INTO Products VALUES ('P00002', 'S0002', 'Fruit', 'Organic Goods Inc.');
INSERT INTO Products VALUES ('P00003', 'S0003', 'Veggie', 'Green Market Co.');
INSERT INTO Products VALUES ('P00004', 'S0004', 'Fruit', 'Ontario Fruits Inc.');
INSERT INTO Products VALUES ('P00005', 'S0005', 'Seafood', 'OceanCatch Ltd.');
INSERT INTO Products VALUES ('P00006', 'S0006', 'Meat', 'Prime Butchers');
INSERT INTO Products VALUES ('P00007', 'S0007', 'Herbs', 'Nature Herbs');
INSERT INTO Products VALUES ('P00008', 'S0008', 'Bakery', 'Daily Breads Co.');
INSERT INTO Products VALUES ('P00009', 'S0009', 'Drink', 'CoolDrinks Inc.');
INSERT INTO Products VALUES ('P00010', 'S0010', 'Dairy', 'Golden Eggs Inc.');


INSERT INTO Orders VALUES ('O00001', 'E00001', 'C0001', TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00002', 'E00002', 'C0002', TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00003', 'E00003', 'C0003', TO_DATE('2025-03-03', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00004', 'E00004', 'C0004', TO_DATE('2025-03-04', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00005', 'E00005', 'C0005', TO_DATE('2025-03-05', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00006', 'E00006', 'C0006', TO_DATE('2025-03-06', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00007', 'E00007', 'C0007', TO_DATE('2025-03-07', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00008', 'E00008', 'C0008', TO_DATE('2025-03-08', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00009', 'E00009', 'C0009', TO_DATE('2025-03-09', 'YYYY-MM-DD'));
INSERT INTO Orders VALUES ('O00010', 'E00010', 'C0010', TO_DATE('2025-03-10', 'YYYY-MM-DD'));


INSERT INTO OrderDetails VALUES ('O00001', 'P00001', 2, 4.99);
INSERT INTO OrderDetails VALUES ('O00002', 'P00002', 5, 3.50);
INSERT INTO OrderDetails VALUES ('O00003', 'P00003', 4, 2.75);
INSERT INTO OrderDetails VALUES ('O00004', 'P00004', 6, 4.20);
INSERT INTO OrderDetails VALUES ('O00005', 'P00005', 3, 7.10);
INSERT INTO OrderDetails VALUES ('O00006', 'P00006', 2, 6.99);
INSERT INTO OrderDetails VALUES ('O00007', 'P00007', 7, 1.50);
INSERT INTO OrderDetails VALUES ('O00008', 'P00008', 3, 2.40);
INSERT INTO OrderDetails VALUES ('O00009', 'P00009', 4, 1.75);
INSERT INTO OrderDetails VALUES ('O00010', 'P00010', 2, 5.25);

-- =========================
-- Customers
-- =========================
INSERT INTO Customers VALUES (1,'Ahmed','Ali','0501111111','ahmed@gmail.com','Sudan');
INSERT INTO Customers VALUES (2,'Mohamed','Siddiq','0502222222','mohamed@gmail.com','Sudan');
INSERT INTO Customers VALUES (3,'Sara','Omar','0503333333','sara@gmail.com','Egypt');
INSERT INTO Customers VALUES (4,'John','Smith','0504444444','john@gmail.com','USA');
INSERT INTO Customers VALUES (5,'Fatima','Hassan','0505555555','fatima@gmail.com','Saudi Arabia');

-- =========================
-- Rooms
-- =========================
INSERT INTO Rooms VALUES (1,101,'Single',150,'Available');
INSERT INTO Rooms VALUES (2,102,'Double',250,'Occupied');
INSERT INTO Rooms VALUES (3,103,'Suite',500,'Available');
INSERT INTO Rooms VALUES (4,104,'Single',150,'Available');
INSERT INTO Rooms VALUES (5,105,'Double',250,'Occupied');

-- =========================
-- Employees
-- =========================
INSERT INTO Employees VALUES (1,'Omar','Ali','Manager',8000);
INSERT INTO Employees VALUES (2,'Nour','Ahmed','Receptionist',4500);
INSERT INTO Employees VALUES (3,'Hassan','Saleh','Receptionist',4300);
INSERT INTO Employees VALUES (4,'Mariam','Othman','Accountant',6000);
INSERT INTO Employees VALUES (5,'Khalid','Adam','Cleaner',3000);

-- =========================
-- Reservations
-- =========================
INSERT INTO Reservations VALUES (1,1,1,2,DATE '2026-07-01',DATE '2026-07-03',300);
INSERT INTO Reservations VALUES (2,2,2,2,DATE '2026-07-02',DATE '2026-07-05',750);
INSERT INTO Reservations VALUES (3,3,3,3,DATE '2026-07-04',DATE '2026-07-06',1000);
INSERT INTO Reservations VALUES (4,4,4,2,DATE '2026-07-05',DATE '2026-07-08',450);
INSERT INTO Reservations VALUES (5,5,5,3,DATE '2026-07-06',DATE '2026-07-09',750);

-- =========================
-- Payments
-- =========================
INSERT INTO Payments VALUES (1,1,DATE '2026-07-01','Cash',300);
INSERT INTO Payments VALUES (2,2,DATE '2026-07-02','Card',750);
INSERT INTO Payments VALUES (3,3,DATE '2026-07-04','Card',1000);
INSERT INTO Payments VALUES (4,4,DATE '2026-07-05','Cash',450);
INSERT INTO Payments VALUES (5,5,DATE '2026-07-06','Card',750);

-- =========================
-- Services
-- =========================
INSERT INTO Services VALUES (1,1,'Breakfast',50);
INSERT INTO Services VALUES (2,2,'Laundry',30);
INSERT INTO Services VALUES (3,3,'Spa',100);

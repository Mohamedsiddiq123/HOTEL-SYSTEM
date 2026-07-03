-- =========================
-- Customers Table
-- =========================
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(20) UNIQUE,
    email VARCHAR2(100) UNIQUE,
    nationality VARCHAR2(50)
);

-- =========================
-- Rooms Table
-- =========================
CREATE TABLE Rooms (
    room_id NUMBER PRIMARY KEY,
    room_number NUMBER UNIQUE NOT NULL,
    room_type VARCHAR2(30),
    price_per_night NUMBER(8,2),
    room_status VARCHAR2(20)
);

-- =========================
-- Employees Table
-- =========================
CREATE TABLE Employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    job_title VARCHAR2(50),
    salary NUMBER(8,2)
);

-- =========================
-- Reservations Table
-- =========================
CREATE TABLE Reservations (
    reservation_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    room_id NUMBER NOT NULL,
    employee_id NUMBER NOT NULL,
    check_in DATE,
    check_out DATE,
    total_amount NUMBER(10,2),

    CONSTRAINT fk_res_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),

    CONSTRAINT fk_res_room
        FOREIGN KEY (room_id)
        REFERENCES Rooms(room_id),

    CONSTRAINT fk_res_employee
        FOREIGN KEY (employee_id)
        REFERENCES Employees(employee_id)
);

-- =========================
-- Payments Table
-- =========================
CREATE TABLE Payments (
    payment_id NUMBER PRIMARY KEY,
    reservation_id NUMBER NOT NULL,
    payment_date DATE,
    payment_method VARCHAR2(30),
    amount NUMBER(10,2),

    CONSTRAINT fk_payment_reservation
        FOREIGN KEY (reservation_id)
        REFERENCES Reservations(reservation_id)
);

-- =========================
-- Services Table
-- =========================
CREATE TABLE Services (
    service_id NUMBER PRIMARY KEY,
    reservation_id NUMBER NOT NULL,
    service_name VARCHAR2(50),
    service_cost NUMBER(8,2),

    CONSTRAINT fk_service_reservation
        FOREIGN KEY (reservation_id)
        REFERENCES Reservations(reservation_id)
);

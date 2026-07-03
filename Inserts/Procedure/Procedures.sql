-- =====================================
-- Procedure: Get Customer Info by ID
-- =====================================
CREATE OR REPLACE PROCEDURE GetCustomerInfo(p_id NUMBER)
IS
    v_name VARCHAR2(100);
    v_phone VARCHAR2(20);
BEGIN
    SELECT first_name || ' ' || last_name, phone
    INTO v_name, v_phone
    FROM Customers
    WHERE customer_id = p_id;

    DBMS_OUTPUT.PUT_LINE('Customer Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Phone: ' || v_phone);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Customer not found');
END;
/






BEGIN
    GetCustomerInfo(1);
END;
/

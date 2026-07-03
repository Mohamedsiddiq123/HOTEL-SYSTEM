CREATE OR REPLACE FUNCTION GetTotalPayments(p_customer_id NUMBER)
RETURN NUMBER
IS
    v_total NUMBER;
BEGIN
    SELECT NVL(SUM(p.amount),0)
    INTO v_total
    FROM Payments p
    JOIN Reservations r ON p.reservation_id = r.reservation_id
    WHERE r.customer_id = p_customer_id;

    RETURN v_total;
END;
/





SELECT GetTotalPayments(1) FROM dual;


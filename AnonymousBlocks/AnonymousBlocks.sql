BEGIN
    DBMS_OUTPUT.PUT_LINE('System Report: Reservations Loaded Successfully');

    DECLARE
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM Reservations;

        DBMS_OUTPUT.PUT_LINE('Total Reservations = ' || v_count);
    END;
END;
/






SET SERVEROUTPUT ON;

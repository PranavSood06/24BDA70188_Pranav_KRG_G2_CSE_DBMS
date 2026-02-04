DECLARE
    v_id        NUMBER := 1011;
    v_name      VARCHAR2(50) := 'Pranav Sood';
    v_salary    NUMBER := 80000;
    v_bonus     NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('ID    : ' || v_id);
    DBMS_OUTPUT.PUT_LINE('Name  : ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

    v_bonus := v_salary * 0.10;

    DBMS_OUTPUT.PUT_LINE('10 percent of salary is : ' || v_bonus);
END;
/

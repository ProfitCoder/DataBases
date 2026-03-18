-- ProfitCoder     9:10         18/03/2026

SET SERVEROUTPUT ON;

-- Para la creación de variables debemos saber que se declaran y usan de la siguiete forma

DECLARE 
    valor1 INT := &introduce_valor1;
    valor2 INT:= &introduce_valor2;
    resultado INT;
BEGIN
    resultado := valor1 + valor2;
    IF valor1 >= valor2 THEN
        dbms_output.put_line('El número '||valor1||' es mayor que '||valor2);
    ELSE
        dbms_output.put_line('El número '||valor2||' es mayor que '||valor1);
    END IF;
END;

-- 3. Pide un dni y tu dices la letra que corresponde

DECLARE 
    dni INT := &DimelaslosnumerosdelDNI;
BEGIN
    CASE dni MOD 23
        WHEN 0 THEN dbms_output.put_line('T');
        WHEN 1 THEN dbms_output.put_line('R');
        WHEN 2 THEN dbms_output.put_line('W');
        WHEN 3 THEN dbms_output.put_line('A');
        WHEN 4 THEN dbms_output.put_line('G');
        WHEN 5 THEN dbms_output.put_line('M');
        WHEN 6 THEN dbms_output.put_line('Y');
        WHEN 7 THEN dbms_output.put_line('F');
        WHEN 8 THEN dbms_output.put_line('P');
        WHEN 9 THEN dbms_output.put_line('D');
        WHEN 10 THEN dbms_output.put_line('X');
        WHEN 11 THEN dbms_output.put_line('B');
        WHEN 12 THEN dbms_output.put_line('N');
        WHEN 13 THEN dbms_output.put_line('J');
        WHEN 14 THEN dbms_output.put_line('Z');
        WHEN 15 THEN dbms_output.put_line('S');
        WHEN 16 THEN dbms_output.put_line('Q');
        WHEN 17 THEN dbms_output.put_line('V');
        WHEN 18 THEN dbms_output.put_line('H');
        WHEN 19 THEN dbms_output.put_line('L');
        WHEN 20 THEN dbms_output.put_line('C');
        WHEN 21 THEN dbms_output.put_line('K');
        WHEN 22 THEN dbms_output.put_line('E');
        ELSE dbms_output.put_line('Número erróneo');
    END CASE;
END;

-- Hacer un Loop

DECLARE 
    i INT := 1;
BEGIN
    LOOP
        dbms_output.put_line(i);
        i := i+1;
    EXIT WHEN i > 5;
    END LOOP;
END;

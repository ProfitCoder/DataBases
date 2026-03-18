-- ProfirCoder     9:09     18/03/2026

-- 1. Que pida un número y diga si es primo o no.

DECLARE
    n NUMBER := &valor;
    es_primo BOOLEAN := TRUE;
BEGIN

    IF n <= 1 THEN
        es_primo := FALSE;
    END IF;

    FOR i IN 2..n-1 LOOP
        IF MOD(n,i) = 0 THEN
            es_primo := FALSE;
        END IF;
    END LOOP;

    IF es_primo THEN
        DBMS_OUTPUT.PUT_LINE('El número ' || n || ' es primo');
    ELSE
        DBMS_OUTPUT.PUT_LINE('El número ' || n || ' no es primo');
    END IF;

END;

-- 2. Que muestre los números del 1 al 100.

DECLARE
    i INT := 1;
BEGIN
    LOOP
        dbms_output.put_line(i);
        i := i+1;
        EXIT WHEN i = 101;
    END LOOP;
END;
    
-- 3. Que imprima la suma de todos los números que van del 1 al 100.

DECLARE
    i INT := 0;
    suma INT := 0;
BEGIN
    LOOP
        i := i+1;
        suma := suma + i;
        EXIT WHEN i = 100;
    END LOOP;
    dbms_output.put_line('La suma de todos los números del 1 al 100 es: '||suma);
END;

-- 4. Que imprima la suma de todos los números pares que van del 1 al 100.

DECLARE
    i INT := 0;
    suma INT := 0;
BEGIN
    LOOP
        i := i + 1;
        IF MOD(i,2) = 0 THEN
            suma := suma + i;
        END IF;
        EXIT WHEN i = 100;
    END LOOP;
    dbms_output.put(suma);
END;

-- 5. Que pida dos números y muestre todos los números pares que van desde el primero al segundo.

DECLARE
    valor1 INT := &IntroduceValor;
    valor2 INT := &IntroduceValor;
    i INT := valor1;
BEGIN
    LOOP
    i := i + 1;
        IF MOD (i,2) = 0 THEN
END;

-- 6. Que pida un número y muestre en pantalla el mismo número de asteriscos.

DECLARE
    n number := &Introduce_Valor;
    contador number := 0;
    resultado varchar2(100):='';
BEGIN
    FOR i IN contador..n LOOP
        resultado := resultado || '*';
    END LOOP;
    dbms_output.put_line(resultado);
END;

CREATE TABLE personas(
    dni VARCHAR2(9) PRIMARY KEY,
    nombre VARCHAR2(15),
    apellidos VARCHAR2(15),
    edad NUMBER
);

DESCRIBE personas;

-----------
-- Inserts
-----------

INSERT INTO personas(dni,nombre,apellidos,edad) VALUES ('11','Juan','Álvarez',18);
INSERT INTO personas(dni,nombre,apellidos,edad) VALUES ('22','José','Jiménez',22);
INSERT INTO personas(dni,nombre,apellidos,edad) VALUES ('33','María','Pérez',35);
INSERT INTO personas(dni,nombre,apellidos,edad) VALUES ('44','Elena','Martínez',20);

SELECT * FROM personas;

-------------
-- Exercises
-------------

SET SERVEROUTPUT ON;

/* 
1. Construya un bloque PL/SQL que pida al usuario su nombre por teclado y que posteriormente lo 
visualice de la siguiente forma "El nombre introducido es: Nombre"
*/

DECLARE
    v_nombre personas.nombre%TYPE := '&Nombre';
BEGIN
    DBMS_OUTPUT.PUT_LINE('El nombre introducido es:' || v_nombre);
END;

/* 2. Construya un bloque PL/SQL que pida por teclado el dni de la persona
y que posteriormente se muestre el nombre y la edad de la persona correspondiente. Controla
las posibles excepciones */

DECLARE
    dni_usuario personas.dni%TYPE := '&dni';
    v_dni personas.dni%TYPE;
    v_nombre personas.nombre%TYPE;
    v_edad personas.edad%TYPE;
    
BEGIN

    SELECT dni,nombre,edad INTO v_dni,v_nombre,v_edad FROM personas WHERE dni_usuario = dni;
    
    DBMS_OUTPUT.PUT_LINE('dni: ' || v_dni || ' Nombre: ' || v_nombre || ' Edad: ' || v_edad);
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('No se encuentra el DNI');
        WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error inesperado');
END;

/* 
2.1- Construya un bloque PL/SQL que pida por teclado una edad y que
posteriormente se muestre el nombre y la edad de todas las personas más jovenes de esa edad
Controla las posibles excepciones
*/

DECLARE
    edad_usuario personas.edad%TYPE := '&IntroduceEdad';
    v_dni personas.dni%TYPE;
    v_nombre personas.nombre%TYPE;
    v_edad personas.edad%TYPE;
    
    CURSOR c_personas IS
    SELECT dni,nombre,edad  
    FROM personas 
    WHERE edad_usuario <= edad;

BEGIN
    OPEN c_personas;
        LOOP
            FETCH c_personas INTO v_dni,v_nombre, v_edad;
            
            EXIT WHEN c_personas%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('Su dni: ' || v_dni || ' Nombre: ' || v_nombre || ' Edad:' || v_edad);
            
        END LOOP;

            IF c_personas%rowcount = 0 THEN
                CLOSE c_alumno;
                    RAISE no_data_found;
            END IF;

    CLOSE c_personas;
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('No hemos encontrado a alguien con esa edad');
        WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('Error desconocido');
END;

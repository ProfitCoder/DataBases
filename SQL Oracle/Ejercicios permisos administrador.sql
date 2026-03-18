--ProfitCoder       9:12         18/03/2026

-- 1. Buscar en la documentación en línea y en bd el contenido de las vistas

SELECT * FROM SYS.DBA_PROFILES;
SELECT * FROM SYS.DBA_ROLES;
SELECT * FROM SYS.DBA_USERS;
SELECT * FROM SYS.DBA_ROLE_PRIVS;
SELECT * FROM SYS.DBA_TAB_PRIVS;
SELECT * FROM SYS.DBA_SYS_PRIVS;

-- 2. Conectarse como usuario SYSTEM a la base y crear un usuario llamado “administrador” autentificado por la base de datos. Indicar como "tablespace" por defecto USERS y como "tablespace" temporal TEMP; asignar una cuota de 500K en el "tablespace" USERS.

CREATE USER C##administrador
IDENTIFIED BY admin
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 500K ON
users;

-- 3. Averiguar qué privilegios de sistema, roles y privilegios sobre objetos tiene concedidos el usuario “administrador”.

SELECT * FROM DBA_SYS_PRIVS
WHERE grantee='C##ADMINISTRADOR';

SELECT * FROM DBA_ROLE_PRIVS
WHERE grantee='C##ADMINISTRADOR';

-- 4. 

GRANT CREATE SESSION TO C##ADMINISTRADOR;

-- 5.

CREATE USER C##PRUEBA00
IDENTIFIED BY prueba00
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 0K ON users;

-- 6. 

GRANT CREATE USER TO C##ADMINISTRADOR;

-- 7.

SELECT grantee
FROM DBA_SYS_PRIVS
WHERE privilege='CREATE USER';

-- 8.

SELECT grantee
FROM DBA_SYS_PRIVS
WHERE privilege='CREATE SESSION';

-- 9.

CREATE TABLESPACE academo
DATAFILE '/u02/oradata/bd/academo.dbf'
SIZE 1M AUTOEXTEND ON NEXT 200K MAXSIZE 1400K;

CREATE TABLESPACE nomina
DATAFILE '/u02/oradata/bd/nomina.dbf'
SIZE 1M AUTOEXTEND ON NEXT 100K MAXSIZE 1500K;

-- 11.

CREATE ROLE C##ADMINISTRADOR;

-- 12.



-- 13.

SELECT grantee
FROM DBA_SYS_PRIVS
WHERE privilege='CREATE ROLE';

-- 14.

REMOVE ALL PRIVILEGES FROM C##ADMINISTRADOR;

GRANT ADMIN TO C##Administrador



-- 18. 

select *
FROM DBA_TS_QUOTAS WHERE username like 'ADMINISTRADOR';


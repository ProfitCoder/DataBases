--ProfitCoder      9:16       18/03/2026

-- 1. Genera las siguientes tablas para guardar esta información.

CREATE TABLE Alumnos(
    Nombre varchar2(50),
    Apellido1 varchar2(50),
    Apellido2 varchar2(50),
    Codigo_Alumno number,
    Direccion varchar2(50),
    Sexo char,
    Fecha_Nacimiento date,
    Curso number
);

CREATE TABLE Cursos(
    Nombre_Curso varchar2(50),
    Codigo_Curso number,
    Profesor varchar2(50),
    Max_Alumnos number,
    Fecha_Inicio date,
    Fecha_Fin date,
    Num_Horas number
);

CREATE TABLE Profesor(
    Nombre varchar2(50),
    Apellido1 varchar2(50),
    Apellido2 varchar2(50),
    DNI number,
    Direccion varchar2(50),
    Titulo varchar2(20),
    Gana number
);

-- 2. Insertar las siguientes tuplas.

INSERT INTO Alumnos VALUES('Lucas','Manilva','López',1,'Alamar 3','V',TO_DATE('01-11-1979','DD-MM-YYYY'),1);
INSERT INTO Alumnos VALUES('Antonia','López','Alcantara',2,'Maniquí 21','M',null,2);
INSERT INTO Alumnos VALUES('Manuel','Alcantara','Pedrós',3,'Julian 2',null,null,2);
INSERT INTO Alumnos VALUES('José','Pérez','Caballar',4,'Jarcha 5','V',TO_DATE('03-02-1977','DD-MM-YYYY'),1);

INSERT INTO Profesor VALUES('Juan','Arch','López',324564646,'Puerta negra,4','Ing. Informática',7500);
INSERT INTO Profesor VALUES('María','Oliva','Rubio',433215676,'Juan Alfonso 32','Lda. Fil. Inglesa',5400);

INSERT INTO Cursos VALUES('Ingles Básico',1,65498987,15,TO_DATE('01-11-2000','DD-MM-YYYY'),TO_DATE('22-12-2000','DD-MM-YYYY'),120);
INSERT INTO Cursos VALUES('Administración Linux',2,564898797,null,TO_DATE('01-11-2000','DD-MM-YYYY'),null,80);

-- 3. Insertar la siguiente tupla en Alumnos.

INSERT INTO Alumnos VALUES('Sergio','Navas','Retal',1,null,'P',null,null);

-- 4. Añadir a la tabla Profesor un número de tipo numérico.

ALTER TABLE Profesor ADD edad INT;

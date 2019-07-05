CREATE TABLE Cursos (
Cod_Curso NUMBER(5),
Nombre VARCHAR2(50) NOT NULL,
Descripcion VARCHAR2(90) NOT NULL,
Precio NUMBER(5,2) NOT NULL,
Descuento NUMBER(4,2) NOT NULL,
CONSTRAINT PK_Cursos PRIMARY KEY (Cod_Curso));

CREATE TABLE Alumnos ( 
Cod_Alumno NUMBER(5),
Nombre VARCHAR2(50) NOT NULL,
Apellidos VARCHAR2(50) NOT NULL,
CONSTRAINT PK_Alumnos PRIMARY KEY (Cod_Alumno));

CREATE TABLE Edicion (
Cod_Curso NUMBER(5),
Cod_Edicion NUMBER(3),
Fecha_Inicio DATE NOT NULL,
Fecha_Fin DATE NOT NULL,
Lugar VARCHAR2(40) NOT NULL,
CONSTRAINT PK_Edicion PRIMARY KEY (Cod_Curso, Cod_Edicion),
CONSTRAINT FK_Edicion_Cursos FOREIGN KEY (Cod_Curso) REFERENCES Cursos(Cod_Curso));


CREATE TABLE Matricula (
Cod_Curso NUMBER(5),
Cod_Edicion NUMBER(2),
Cod_Alumno NUMBER(5),
Fecha_Matricula DATE NOT NULL,
CONSTRAINT PK_Matricula PRIMARY KEY (Cod_Curso, Cod_Edicion, Cod_Alumno),
CONSTRAINT FK_Matricula_Edicion FOREIGN KEY (Cod_Curso, Cod_Edicion) REFERENCES Edicion(Cod_Curso, Cod_Edicion),
CONSTRAINT FK_Matricula_Alumnos FOREIGN KEY (Cod_Alumno) REFERENCES Alumnos(Cod_Alumno)); 

SET LINESIZE 30000
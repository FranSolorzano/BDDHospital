create database BDDHospital;

use BDDHospital;

/*PACIENTE*/
create table Paciente(
NDeSeguridaSocial int NOT NULL,
NombrePaciente varchar (20) NOT NULL,
ApellidoPaciente varchar (30) NOT NULL,
IdTelefono int foreign key (IdTelefono) references Telefono(IdTelefono) NOT NULL,
IdSexo int foreign key (IdSexo) references Sexo(IdSexo) NOT NULL,
IdDireccion int foreign key (IdDireccion) references Direccion(IdDireccion) NOT NULL,
NumHistorialClinico int identity(1,1) primary key NOT NULL,
Observaciones varchar (200) NOT NULL
);

create table Telefono(
IdTelefono int NOT NULL identity (1,1) primary key,
NumTelefonico int NOT NULL,
CodigoArea int NOT NULL
);

create table Sexo(
IdSexo int NOT NULL identity (1,1) primary key,
Sexo varchar (10) NOT NULL
);

create table Direccion(
IdDireccion int NOT NULL identity (1,1) primary key,
CódigoPostal int NOT NULL,
Domicilio varchar(50)NOT NULL,
NProvincia varchar(10)NOT NULL,
);

/*MEDICO*/
create table Medicos(
CodIdentificacionMedico int identity (1,1) primary key NOT NULL,
Nombre varchar (30) NOT NULL,
Apellidos varchar (50) NOT NULL,
Observaciones varchar (50) NOT NULL,
IdEspecialidad int foreign key (IdEspecialidad) references Especialidad(IdEspecialidad) NOT NULL,
IdCargo int foreign key (IdCargo) references Cargo(IdCargo) NOT NULL,
);

create table Especialidad(
IdEspecialidad int identity (1,1) primary key NOT NULL,
Especialidad varchar (50) NOT NULL
);

create table Cargo(
IdCargo int identity (1,1) primary key NOT NULL,
Cargo varchar (50) NOT NULL
);

/*INGRESOS*/
create table Ingreso(
IdIngresos int identity (1,1) primary key NOT NULL,
Procedencia varchar (50) NOT NULL,
FechaIngreso varchar (50) NOT NULL,
Observaciones varchar (200) NOT NULL,
IdArea int foreign key (IdArea) references Areas(IdArea) NOT NULL
);

create table Areas(
IdArea int identity (1,1) primary key NOT NULL,
NumPlanta int NOT NULL,
NumCama int NOT NULL
);

/*-----------------AQUI TERMINAN LAS TABLAS---------------*/

/*-----------------AQUI COMENZAMOS A INGRESAR LOS VALORES A LAS TABLAS----------------*/


/*INGRESO DE VALORES A LA TABLA DEL PACIENTE*/

insert into Sexo(Sexo) values('Masculino') 
insert into Sexo(Sexo) values('Femenino') 

Select * from Sexo

insert into Telefono(CodigoArea,NumTelefonico) values (503,70338406)
insert into Telefono(CodigoArea,NumTelefonico) values (504,75238570)
insert into Telefono(CodigoArea,NumTelefonico) values (503,60343216)
insert into Telefono(CodigoArea,NumTelefonico) values (505,80398106)
insert into Telefono(CodigoArea,NumTelefonico) values (506,70335644)
insert into Telefono(CodigoArea,NumTelefonico) values (508,58934026)
insert into Telefono(CodigoArea,NumTelefonico) values (502,56849365)
insert into Telefono(CodigoArea,NumTelefonico) values (501,57843765)
insert into Telefono(CodigoArea,NumTelefonico) values (510,57890437)
insert into Telefono(CodigoArea,NumTelefonico) values (504,68954637)

select * from Telefono

insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (223344,'Ojos de agua','Chalate')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (445566,'El Tamarindo','Chalate')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (678546,'Cerro Grande','La Union')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (567898,'Lima','La Paz')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (456378,'Las Vueltas','Chalate')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (234764,'Los Ranchos','San Miguel')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (458709,'Los Recinos','La Union')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (236589,'El Zapotal','La Paz')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (345867,'Los Termos','La Libertad')
insert into Direccion(CódigoPostal,Domicilio,NProvincia) values (223489,'San Pedro','La Union')

select * from Direccion

insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(10,'Franklin','Solorzano',1,1,1,'Ninguna')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(9,'Carlos','Figueroa',2,1,2,'Operado del brazo')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(8,'Adan','Calles',3,1,3,'Senucitis')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(7,'Genaro','Recinos',4,1,4,'Bronquitis')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(6,'Romeo','Salazar',5,1,5,'Migraña')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(5,'Katia','Sibrian',6,1,6,'Resfriado')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(4,'Naomi','Alvarenga',7,2,7,'Ninguna')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(3,'Paola','Medrano',8,2,8,'Ninguna')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(2,'Massiel','Guardado',9,2,8,'Ninguna')
insert into Paciente(NDeSeguridaSocial,NombrePaciente,ApellidoPaciente,IdTelefono,IdSexo,IdDireccion,Observaciones)values(1,'Iran','Zamora',10,2,10,'Ninguna')

select * from Paciente

/*INGRESO DE VALORES A LA TABLA DE MEDICOS*/

insert into Especialidad(Especialidad) values ('Ginecologo')
insert into Especialidad(Especialidad) values ('Odontologo')
insert into Especialidad(Especialidad) values ('Pediatra')
insert into Especialidad(Especialidad) values ('Nutricion')
insert into Especialidad(Especialidad) values ('Ortopeda')
insert into Especialidad(Especialidad) values ('Cardeologo')

select * from Especialidad

insert into Cargo(cargo) values ('Ginecologia')
insert into Cargo(cargo) values ('Odontologia')
insert into Cargo(cargo) values ('Pediatria')
insert into Cargo(cargo) values ('Nutricionista')
insert into Cargo(cargo) values ('Ortopeda')
insert into Cargo(cargo) values ('Cardeologia')

select * from Cargo

insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Missael','Martinez','Ninguna',1,1)
insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Jose','Tobar','Gripe',2,2)
insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Samuel','Manzano','Reesfriado',3,3)
insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Carlos','Moreno','Tos Seca',4,4)
insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Pedro','Delgado','Ninguna',5,5)
insert into Medicos(Nombre,Apellidos,Observaciones,IdEspecialidad,IdCargo)values ('Roberto','Duran','Fiebre',6,6)

select * from Medicos

insert into Areas(NumPlanta,NumCama) values (1,5)
insert into Areas(NumPlanta,NumCama) values (2,6)
insert into Areas(NumPlanta,NumCama) values (3,8)
insert into Areas(NumPlanta,NumCama) values (4,5)
insert into Areas(NumPlanta,NumCama) values (5,8)
insert into Areas(NumPlanta,NumCama) values (6,10)

select * from Areas

insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Chalatenango','15/05/2021','Senusistis',1)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Uunion','12/04/2021','Migraña',4)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('San Salvador','10/05/2021','Fractura',5)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Paz','02/03/2021','Corona Virus',3)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Libertad','29/08/2021','Ninguna',3)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Chalatenango','20/04/2021','Nauseas',2)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Union','10/02/2021','Pendice Inflamada',1)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('San Miguel','16/04/2021','Bronquitis',6)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Santa Ana','30/02/2021','Amigdalas Inflamadas',4)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('San Salvador','30/02/2021','Hernias',6)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Paz','20/11/2021','Discos Rotos',3)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Chalatenango','10/05/2021','Ninguna',2)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('San Salvador','15/03/2021','Fractura',1)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Union','28/02/2021','Bronquitis',6)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Chalatenango','21/05/2021','Amigdalas Inflamadas',5)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('Usulutan','17/09/2021','Ninguna',4)
insert into Ingreso(Procedencia,FechaIngreso,Observaciones,IdArea)values ('La Libertad','26/10/2021','Hernias',1)

select * from Ingreso

/*SELECCION DE TODAS LAS TABLAS*/
select * from Paciente, Medicos, Ingreso

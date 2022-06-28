-- 1-. creamos B.D aeropuerto--
create database aeropuerto;
show databases;
use aeropuerto;
-- 2-. creamos la primera tabla pasajeros --
CREATE TABLE pasajeros(
id int not null auto_increment,
nombre char(120) not null,
edad int not null,
correo varchar(120) not null,
telefono varchar(120) not null,
PRIMARY KEY(id) 
);
-- insertamos datos a la tabla pasajeros --
insert  into pasajeros(nombre,edad,correo,telefono) 
values ('angelo','18','angelo@gmail.com','953501181'),
		('francisca','17','francisca@gmail.com','922081773'),
		('jano','17','jano@gmail.com','922081788');

-- creamos una segunda tabla -- 
show databases;
use aeropuerto;
create table aerolinea(
id int not null,
nombre char(120) not null,
modelo varchar(120) not null,
viajan_en int not null,
-- 
PRIMARY KEY (id),
FOREIGN KEY(viajan_en) references pasajeros(id)
);

insert into aerolinea(nombre,modelo,viajan_en) 
values ('angelo','boeing 800','1'),
       ('francisca','boeing 373','2'),
	   ('jano','boeing 700','3');
       
       
show databases;
use aeropuerto;
create table Equipajes(
id int not null auto_increment,
nombre char(120) not null,
correo varchar(120) not null,
dueño_es int not null,
PRIMARY KEY(id),
FOREIGN KEY(dueño_es) references pasajeros(id)
);

insert into Equipajes(nombre,correo,dueño_es)
values ('angelo','angelo@gmail.com','1'),
	   ('francisca','francisca@gmail.com','2'),
       ('jano','jano@gmail.com','3');
        
        
select * from aerolinea


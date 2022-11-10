-- Crear base de dato

CREATE DATABASE avion;

-- Usar base de dato

use avion;


-- CREAR TABLAS Y ELIMINAR TABLAS

DROP TABLE IF EXISTS `Aviones`;
CREATE TABLE IF NOT EXISTS `Aviones` (
`fecha` varchar(225) ,
`hora declarada` varchar(225) ,
`ruta` varchar(225) ,
`Operador` varchar(225) ,
`vuelo_no` varchar(225) ,
`ruta1` varchar(225) ,
`ac_tipo` varchar(225) ,
`registro` varchar(225) ,
`cn_ln` varchar(225) ,
`todos_a_bordo` varchar(225) ,
`pasajeros_a_bordo` varchar(225) ,
`tripulantes_a_bordo` varchar(225),
`cantidad_de_fallecidos` varchar(225) ,
`pasajeros_muertos` varchar(225) ,
`tripulantes_fatalidades` varchar(225) ,
`tierra` varchar(225) ,
`resumen` text,
`fechas` int 	

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


DROP TABLE IF EXISTS `USA`;
CREATE TABLE IF NOT EXISTS `USA` (

`Fechas` int not null,                                 
`Transporte aereo` int,                      
`Aviacion comercial` int,                    
`Aviacion general` int,            
`Transporte carretero` int,                  
`Automoviles de pasajeros y camionetas` int, 
`Automoviles de pasajeros` int,               
`Motocicletas` int,                           
`Autobuses` int,                             
`Camiones pesados` int,                       
`Peatones` int,                               
`Otros` int,                                  
`Transporte por ductos` int,                 
`Transporte ferroviario` int,               
`Cruceros a nivel` int,                      
`Vias ferreas` int,                          
`Transporte publico, total` int,             
`Ferrocarril urbano y suburbano` int,        
`Transporte por agua` int,                   
`Barcos de pasajeros` int,                   
`Embarcaciones de recreo` int

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- LLAVES PRIMARIAS Y DESBLOQUEO FK , BLOQUEO FK

SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;


ALTER TABLE usa
 ADD CONSTRAINT PK_CUSTID PRIMARY KEY (Fechas);
 DESC usa;
  
  -- LLLAVES FK
 
ALTER TABLE aviones ADD CONSTRAINT `aviones_muerte` FOREIGN KEY (Fechas) REFERENCES usa(Fechas) ON DELETE RESTRICT ON UPDATE RESTRICT;

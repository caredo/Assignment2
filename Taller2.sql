CREATE TABLESPACE Taller2 DATAFILE
'C:\Users\Becari\Documents\sqldeveloper\Taller2_BD\Ejercicio2.dbf' size 500 M;

CREATE TABLE CLASE_VEHICULO(
ID_CLASE_VEHICULO NUMBER  PRIMARY KEY, 
CLASE VARCHAR2(100),
CALIFICACION_VEHICULO INT
)

CREATE SEQUENCE CLASE_VEHICULO_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;

CREATE TABLE VEHICULO (
REGISTRO_VEHICULO  NUMBER PRIMARY KEY, 
PLACA VARCHAR2(10),
ESTADO VARCHAR2(50),
KILOMETRAJE NUMBER(6,0),
MODELO NUMBER(4,0),
ID_CLASE_VEHICULO NUMBER REFERENCES CLASE_VEHICULO(ID_CLASE_VEHICULO),
VALOR_ACTUAL NUMBER(10,0),
VALOR_REEMPLAZO NUMBER(10,0),
FECHA_COMPRA DATE,
FECHA_PAGO_IMPUESTO DATE,
NUMERO_SEGURO VARCHAR2(50),
FECHA_PERDIDA DATE,
FECHA_EMISION DATE
)

CREATE SEQUENCE VEHICULO_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;
  
CREATE TABLE CONDUCTOR(
NUMERO_EMPLEADO NUMBER PRIMARY KEY, 
NOMBRE_COMPLETO VARCHAR2(100),
CALIFICAION_CONDUCTOR INT
)

CREATE SEQUENCE CONDUCTOR_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;

CREATE TABLE VEHICULO_CONDUCTOR(
ID_VEHICULO_CONDUCTOR NUMBER PRIMARY KEY, 
REGISTRO_VEHICULO NUMBER REFERENCES VEHICULO(REGISTRO_VEHICULO),
NUMERO_EMPLEADO NUMBER REFERENCES CONDUCTOR(NUMERO_EMPLEADO),
FECHA_ASIGNACION DATE,
ESTADO_CALIFICACION VARCHAR(50)
)

CREATE SEQUENCE VEHICULO_CONDUCTOR_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;

CREATE TABLE SERVICIO(
ID_SERVICIO NUMBER PRIMARY KEY, 
NOMBRE VARCHAR2(100),
DESCRIPCION VARCHAR2(100)
)

CREATE SEQUENCE SERVICIO_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;
  
CREATE TABLE VEHICULO_SERVICIO(
ID_VEHICULO_SERVICIO NUMBER PRIMARY KEY, 
REGISTRO_VEHICULO NUMBER REFERENCES VEHICULO(REGISTRO_VEHICULO),
ID_SERVICIO NUMBER REFERENCES SERVICIO(ID_SERVICIO),
ESTADO VARCHAR2(50),
FECHA DATE
)

CREATE SEQUENCE VEHICULO_SERVICIO_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;
  
CREATE TABLE RECLAMACION_SEGURO(
ID_RECLAMACION_SEGURO NUMBER PRIMARY KEY, 
REGISTRO_VEHICULO NUMBER REFERENCES VEHICULO(REGISTRO_VEHICULO),
NATURALEZA_PAGO VARCHAR2(50),
COSTOS_REPARACION NUMBER(10,0)
)

CREATE SEQUENCE RECLAMACION_SEGURO_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;

CREATE TABLE DETALLE_RECLAMACION(
ID_DETALLE_RECLAMACION NUMBER PRIMARY KEY, 
ID_RECLAMACION_SEGURO NUMBER REFERENCES RECLAMACION_SEGURO(ID_RECLAMACION_SEGURO),
FECHA DATE,
DESCRIPCION VARCHAR2(50),
CANTIDAD INT,
COSTO NUMBER(10,0),
ESTADO VARCHAR(50)
)

CREATE SEQUENCE DETALLE_RECLAMACION_SEQUENCE 
  START WITH 1
  INCREMENT BY 1;
  
  
--INSERTAR 50 CONDUCTORES
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Brady Hartman',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Zahir Pruitt',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Griffin Justice',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Aladdin Beard',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Lars Browning',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Clinton Guy',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Macaulay Wong',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Barry Ware',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kennan Browning',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kadeem Curtis',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Hayden Monroe',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Anthony Richardson',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Allistair Higgins',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Stephen Mccall',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Ali Howe',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Gavin Woodard',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Seth Wells',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Hu Lowe',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Jonah Fleming',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Honorato Vance',8);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Callum Santiago',8);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Isaac Perkins',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Brennan Holloway',8);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Dieter Cardenas',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Brandon Luna',5);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kermit Brooks',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Quentin Kelly',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Quinlan Stone',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Eaton Ellison',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kane Weber',7);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Dalton Macdonald',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Donovan Glass',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Griffith Contreras',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Austin Hayes',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Clinton Roth',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Caldwell Sexton',7);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Wallace Burnett',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kyle Garrison',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Hamish Howell',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Tanek Fernandez',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Ferdinand Cruz',7);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Wallace Green',6);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Andrew Reese',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kieran Alvarez',8);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Cade Potter',1);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Shad Contreras',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Kennan Petersen',2);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Samson Bartlett',9);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Ulysses Kinney',3);
INSERT INTO CONDUCTOR (NUMERO_EMPLEADO,NOMBRE_COMPLETO,CALIFICAION_CONDUCTOR) VALUES (CONDUCTOR_SEQUENCE.NEXTVAL,'Dieter Mccullough',3);

commit; 


--INSERTAR 2 CLASES DE VEHICULOS
INSERT INTO CLASE_VEHICULO (ID_CLASE_VEHICULO,CLASE,CALIFICACION_VEHICULO) VALUES (CLASE_VEHICULO_SEQUENCE.NEXTVAL,'Motorcycle',9);
INSERT INTO CLASE_VEHICULO (ID_CLASE_VEHICULO,CLASE,CALIFICACION_VEHICULO) VALUES (CLASE_VEHICULO_SEQUENCE.NEXTVAL,'Car',7);

commit;

--INSERTAR 5 SERVICIOS
INSERT INTO SERVICIO (ID_SERVICIO,NOMBRE,DESCRIPCION) VALUES (SERVICIO_SEQUENCE.NEXTVAL,'Belts','');
INSERT INTO SERVICIO (ID_SERVICIO,NOMBRE,DESCRIPCION) VALUES (SERVICIO_SEQUENCE.NEXTVAL,'Cabin Air Filter','');
INSERT INTO SERVICIO (ID_SERVICIO,NOMBRE,DESCRIPCION) VALUES (SERVICIO_SEQUENCE.NEXTVAL,'Battery and Cables','');
INSERT INTO SERVICIO (ID_SERVICIO,NOMBRE,DESCRIPCION) VALUES (SERVICIO_SEQUENCE.NEXTVAL,'Exhaust','');
INSERT INTO SERVICIO (ID_SERVICIO,NOMBRE,DESCRIPCION) VALUES (SERVICIO_SEQUENCE.NEXTVAL,'Windshield Washer Fluid','');

commit;

--INSERTAR 20 VEHICULOS
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'ZNR200','Active',7438,2010,1,61603,8053,'29/05/2010','18/07/2016','4247243',NULL,'03/04/2016');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'XJP097','Active',16832,2011,2,75007,17741,'06/11/2011','20/02/2016','0555675',NULL,'09/01/2014');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'KWY685','Active',6953,2010,2,28386,7233,'06/10/2011','11/05/2017','1419958',NULL,'11/08/2015');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'TCQ707','Active',8013,2011,2,54462,15829,'19/05/2010','01/03/2016','3233334',NULL,'20/10/2016');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'VJQ529','Active',15140,2010,1,57393,8261,'18/12/2011','12/02/2017','4243860',NULL,'06/09/2012');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'KBQ507','Active',25777,2010,1,35905,11987,'27/11/2011','23/08/2016','1723473',NULL,'15/02/2010');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'WBU720','Active',34236,2011,2,24268,17761,'02/08/2011','07/02/2017','0732278',NULL,'03/01/2010');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'GNF479','Active',17439,2010,1,25303,15985,'05/01/2011','14/02/2016','1712569',NULL,'16/10/2016');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'LVS941','Active',8730,2011,1,57772,11286,'12/05/2010','11/01/2016','5095583',NULL,'10/08/2012');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'CXD872','Repairing',27624,2011,1,85408,14203,'10/04/2010','18/05/2016','0768757',NULL,'21/05/2011');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'GID369','Repairing',19518,2011,1,52733,9706,'23/11/2011','19/09/2016','8528831',NULL,'27/05/2010');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'RGU068','Repairing',28168,2011,1,92076,12168,'15/03/2010','01/05/2016','6340591',NULL,'08/03/2011');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'MMV670','Repairing',11321,2011,1,70504,16246,'22/01/2010','05/04/2016','3859147',NULL,'21/11/2012');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'FZN105','Repairing',1865,2010,2,65809,17251,'02/10/2010','23/01/2017','3525458',NULL,'12/06/2010');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'XNM205','Repairing',30289,2010,1,40132,15687,'24/04/2011','16/05/2017','8016356',NULL,'22/02/2012');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'AUZ515','Repairing',14847,2010,2,63406,13312,'27/07/2010','19/05/2017','2398866',NULL,'15/09/2016');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'POU198','Repairing',3172,2011,2,30260,8261,'23/02/2011','23/03/2017','0268813',NULL,'14/12/2012');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'FKJ666','Repairing',12022,2010,2,62258,9261,'07/09/2010','04/05/2017','0080596',NULL,'04/05/2015');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'INM202','Repairing',1245,2011,2,37286,10122,'16/04/2010','13/12/2016','1390476',NULL,'22/02/2010');
INSERT INTO VEHICULO (REGISTRO_VEHICULO,PLACA,ESTADO,KILOMETRAJE,MODELO,ID_CLASE_VEHICULO,VALOR_ACTUAL,VALOR_REEMPLAZO,FECHA_COMPRA,FECHA_PAGO_IMPUESTO,NUMERO_SEGURO,FECHA_PERDIDA,FECHA_EMISION) VALUES (VEHICULO_SEQUENCE.NEXTVAL,'BCS525','Repairing',16565,2010,2,53130,6394,'01/01/2010','03/01/2017','7869170',NULL,'21/09/2016');

COMMIT;

--INSERTAR 40 REGISTROS EN VEHICULO_CONDUCTOR
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,12,23,'Active','12/04/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,12,32,'Active','25/05/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,12,38,'Active','14/03/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,7,44,'Active','26/07/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,14,28,'Active','06/05/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,17,5,'Active','02/03/2016');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,10,25,'Active','25/07/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,4,38,'Active','17/03/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,14,35,'Active','06/05/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,40,'Inactive','24/01/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,14,34,'Active','25/02/2017');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,29,'Active','13/08/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,11,34,'Active','23/05/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,45,'Active','03/12/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,8,35,'Active','12/12/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,9,41,'Inactive','17/03/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,11,43,'Active','07/04/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,19,9,'Active','22/02/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,19,47,'Active','27/01/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,14,'Active','18/05/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,5,5,'Active','18/08/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,17,19,'Active','05/11/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,13,37,'Inactive','10/07/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,20,6,'Active','20/10/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,8,32,'Active','13/10/2016');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,9,8,'Active','23/06/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,42,'Active','11/01/2013');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,19,42,'Inactive','06/01/2017');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,9,43,'Active','12/02/2017');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,19,34,'Active','21/12/2016');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,13,28,'Active','24/06/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,14,25,'Active','08/04/2015');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,46,'Active','25/10/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,15,28,'Active','16/07/2016');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,12,35,'Active','22/03/2016');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,5,17,'Active','01/11/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,15,30,'Active','29/07/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,2,16,'Inactive','03/08/2012');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,8,11,'Active','07/03/2014');
INSERT INTO VEHICULO_CONDUCTOR (ID_VEHICULO_CONDUCTOR,REGISTRO_VEHICULO,NUMERO_EMPLEADO,ESTADO_CALIFICACION,FECHA_ASIGNACION) VALUES (VEHICULO_CONDUCTOR_SEQUENCE.NEXTVAL,10,32,'Active','16/12/2014');

COMMIT;


--INSERTA 3O REGISTROS VEHICULO_SERVICIO
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,13,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,12,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,9,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,4,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,5,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,10,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,18,1,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,2,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,5,3,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,8,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,4,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,4,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,8,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,17,1,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,8,3,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,19,3,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,19,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,9,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,10,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,20,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,6,1,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,13,1,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,8,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,11,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,9,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,17,5,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,12,2,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,3,3,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,3,4,'Ok','16/12/2014');
INSERT INTO VEHICULO_SERVICIO (ID_VEHICULO_SERVICIO,REGISTRO_VEHICULO,ID_SERVICIO,ESTADO,FECHA) VALUES (VEHICULO_SERVICIO_SEQUENCE.NEXTVAL,1,1,'Ok','16/12/2014');

COMMIT;

--INSERTA 10 REGISTROS EN RECLAMACION_SEGURO
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,3,'Efectivo',45437);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,15,'Efectivo',65030);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,16,'Efectivo',91640);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,14,'Efectivo',98843);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,17,'Efectivo',63573);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,1,'Efectivo',47458);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,4,'Efectivo',67655);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,16,'Efectivo',81365);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,19,'Efectivo',51031);
INSERT INTO RECLAMACION_SEGURO (ID_RECLAMACION_SEGURO,REGISTRO_VEHICULO,NATURALEZA_PAGO,COSTOS_REPARACION) VALUES (RECLAMACION_SEGURO_SEQUENCE.NEXTVAL,5,'Efectivo',96364);

COMMIT;

--INSERTA 10 REGISTROS EN DETALLE_RECLAMACION
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,1,'24/04/2016','Reclamacion cumplida',1,346752,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,2,'05/05/2017','Reclamacion cumplida',1,94400,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,3,'18/09/2016','Reclamacion cumplida',1,151578,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,4,'25/03/2016','Reclamacion cumplida',1,33106,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,5,'29/02/2016','Reclamacion cumplida',1,317779,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,6,'30/09/2016','Reclamacion cumplida',1,311967,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,7,'18/03/2016','Reclamacion cumplida',1,83399,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,8,'17/11/2016','Reclamacion cumplida',1,300786,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,9,'16/05/2016','Reclamacion cumplida',1,225260,80);
INSERT INTO DETALLE_RECLAMACION (ID_DETALLE_RECLAMACION,ID_RECLAMACION_SEGURO,FECHA,DESCRIPCION,CANTIDAD,COSTO,ESTADO) VALUES (DETALLE_RECLAMACION_SEQUENCE.NEXTVAL,10,'20/10/2016','Reclamacion cumplida',1,126004,80);

COMMIT;






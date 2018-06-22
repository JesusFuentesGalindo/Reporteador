USE nmc;
/*Ingresa información del INC*/
INSERT INTO incidentes(idIncidente, incPadre, asociacion, tipoInforme, criticidad, prioridad, tipoProblema,
    inicioAfectacionFalla, finAfectacionFalla, causa, resolucion)
VALUES('INC000000018676', 'INC000000019331', 'Hijo', 'Reactivo', 'Alta', '2', 'Enlace Fuera de Servicio', 
	'2018/06/19 02:48', '2018/06/15 14:42',
    'Se detectó corte de fibra óptica en trayectoria de GTAC Cd. Juarez-Moctezuma la cual recae en OPGW responsabilidad de CFE, se desconoce la causa del corte.', 
    'Se procedió con la generación emergente de una trayectoria de respaldo por trayectoria IZZI y se valida el restablecimiento del servicio, manteniéndose estable.'
);

/*Ingresa información del cliente*/
INSERT INTO clientes(idCliente, nombreCliente, giro)
VALUES(31188, 'Verizon Business', 'INICIATIVA PRIVADA');

/*Ingresa información del servicio*/
INSERT INTO servicios(circuito, idCliente)
VALUES('7122-CCH-964', 31188);

/*Relaciona el INC y el servicio*/
INSERT INTO incidenteServicio(idIncidente, circuito)
VALUES('INC000000018676', '7122-CCH-964');

/*Ingresa la información del proceso de creación del RFO*/
INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud, fechaValidacion, 
	responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, responsableVistoBueno, 
	fechaEnvioRfo, responsableEnvioRfo, medio, area, observaciones)
VALUES('RFO000000018676', 'INC000000018676', 'En Revisión', '2018/06/21 10:20', 'Oscar Javier Saucedo Pedraza <ojsaucedop@bestel.com.mx>',
	'2018/06/21 19:34', 'Jose De Jesus Fuentes Galindo <p-jdfuentes@bestel.com.mx>', 'Alberto Antonio Suppen Dimas <aasuppendi@bestel.com.mx>',
    '1900/01/01 00:00', '', '1900/01/01 00:00', '', 'Mail', 'Transporte', NULL);

    
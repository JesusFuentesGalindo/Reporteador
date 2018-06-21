/*Ingresa información del INC*/
INSERT INTO incidentes(idIncidente, incPadre, asociacion, tipoInforme, criticidad, prioridad, tipoProblema,
    inicioAfectacionFalla, finAfectacionFalla, causa, resolucion)
VALUES('INC000000018692', '', 'Sin Relación', 'Reactivo', 'Alta', '2', 'Enlace Fuera de Servicio', 
	'2018/06/14 15:02', '2018/06/14 19:24',
    'Se detectó E1 conmutado a ruta de respaldo entre Chetumal y Quintana Roo ocasionando que el enlace se quedara aislado.', 
    'Se conmuta manualmente enlace E1 a ruta de trabajo y se reconfigura como revertido para que la conmutación  se realice en automático.'
);

/*Ingresa información del cliente*/
INSERT INTO clientes(idCliente, nombreCliente, giro)
VALUES(32807, 'Secretaria de Comunicaciones y Transportes Centro SCT Quintana Roo', 'GOBIERNO');

/*Ingresa información del servicio*/
INSERT INTO servicios(circuito, idCliente)
VALUES('9382-TKD-001', 32807);

/*Relaciona el INC y el servicio*/
INSERT INTO incidenteServicio(idIncidente, circuito)
VALUES('INC000000018692', '9382-TKD-001');

/*Ingresa la información del proceso de creación del RFO*/
INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud, fechaValidacion, 
	responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, responsableVistoBueno, 
	fechaEnvioRfo, responsableEnvioRfo, medio, area, observaciones)
VALUES('RFO000000018692', 'INC000000018692', 'En Revisión', '2018/06/19 16:56', 'Jaime Velasco Guzman <jvelascogu@bestel.com.mx>',
	'2018/06/19 19:42', 'Jose De Jesus Fuentes Galindo <p-jdfuentes@bestel.com.mx>', 'Oscar Leonardo Rubio Ontiveros <olrubioo@bestel.com.mx>',
    '1900/01/01 00:00', '', '1900/01/01 00:00', '', 'Mail', 'Tier1', NULL);


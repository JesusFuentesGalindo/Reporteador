USE nmc;
/*Ingresa información del INC*/
INSERT INTO incidentes(idIncidente, incPadre, asociacion, tipoInforme, criticidad, prioridad, tipoProblema,
    causa, resolucion, cierreImputable, inicioAfectacionInc, finAfectacionInc, estadoProblema, areaResolutora,
    proveedor, afectacion)
VALUES(
	/*idIncidente*/'INC000000020973',
	/*incPadre*/NULL,
    /*asociacion*/'Sin Relacion',
    /*tipoInforme*/'Reactivo',
    /*criticidad*/'Alta',
    /*prioridad*/'2',
    /*tipoProblema*/'Enlace Fuera de Servicio', 
    /*causa*/'Se detecta que en la ruta de transporte se tiene un evento en el 6500-QROLD STM64 1-3-2 segmento lineal, afectado por un INC000018007249, relacionado a un corte de fibra óptica por inducción de voltaje en línea CFE.', 
    /*resolucion*/'Se procedio con creación de una ruta de protección, con lo que el servicio restablece y se mantiene estable.',
    /*cierreImputable*/'Bestel',
    /*inicio INC*/'2018/06/29 12:28',
    /*finINC*/'2018/06/29 14:22',
    /*EstadoProblema*/'Cerrado',
    /*AreaResolutora*/'Transporte',
    /*proveedor*/NULL,
    /*afectacion*/'Otro'
);

/*Ingresa información del cliente*/
INSERT INTO clientes(idCliente, nombreCliente, giro, sla, empresaGestora)
VALUES(
	/*idCliente*/31514,
    /*nombreCliente*/'Pegaso PCS SA de CV',
    /*giro*/'Carrier Nacional',
    /*sla*/240,
    /*empresaGestora*/'Metrored'
);

/*Ingresa información del servicio*/
INSERT INTO servicios(circuito, idCliente, servicio, producto, circuitoM6, circuitoSolar,
	circuitoSicab, estadoDestino, sitio)
VALUES(
	/*circuito*/'7120-CCH-180',
    /*idCliente*/30935,
    /*servicio*/'Clear Channel DS3',
    /*producto*/'Clear Channel',
	/*circuitoM6*/NULL,
    /*circuitoSolar*/NULL,
    /*circuitoSicab*/NULL,
    /*EstadoDestino*/'Guanajuato',
    /*Sitio*/'Av. Guerrero 149'
);

/*Relaciona el INC y el servicio*/
INSERT INTO incidenteServicio(idIncidente, circuito, inicioAfectacionFalla, finAfectacionFalla)
VALUES(
	/*idINC*/'INC000000020973',
	/*circuito*/'7120-CCH-180',
    /*inicioFalla*/'2018/06/29 12:28',
    /*finFalla*/'2018/06/29 14:12'
);

/*Ingresa la información del proceso de creación del RFO*/
INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud, fechaEnvioValidacion, 
	responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, responsableVistoBueno, 
	fechaEnvioRfo, responsableEnvioRfo, medio, observaciones)
VALUES(
	/*idRFO*/'RFO000000020973',
    /*idINC*/'INC000000020973',
    /*estatus*/'En Revision',
    /*fechaSolicitud*/'2018/06/29 14:31',
    /*respSolicitud*/'Sergio Rene Torres Torres <srtorresto@bestel.com.mx>',
	/*fechaValidacion*/'2018/07/02 18:17',
    /*respEnvioVal*/'p-jdfuentes@bestel.com.mx',
    /*respValidacion*/'aasuppendi@bestel.com.mx',
    /*fechaVoBo*/NULL,
    /*respVoBo*/NULl,
    /*fechaEnvioRfo*/NULL,
    /*respEnvioRfo*/NULL,
    /*medio*/'Telefono',
    /*observacion*/NULL
);

INSERT INTO usuarios(usuario, contrasena)
VALUES
('dudiazg@bestel.com.mx', '1234');
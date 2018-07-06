USE nmc;
/*Ingresa información del INC*/
INSERT INTO incidentes(idIncidente, incPadre, asociacion, tipoInforme, criticidad, prioridad, tipoProblema,
    causa, resolucion, cierreImputable, inicioAfectacionInc, finAfectacionInc, estadoProblema, areaResolutora,
    proveedor, afectacion)
VALUES(
	/*idIncidente*/'INC000000020926',
	/*incPadre*/'INC000000020914',
    /*asociacion*/'Hijo',
    /*tipoInforme*/'Reactivo',
    /*criticidad*/'Alta',
    /*prioridad*/'2',
    /*tipoProblema*/'Enlace Fuera de Servicio', 
    /*causa*/'Se detectó falla de energía eléctrica.', 
    /*resolucion*/'Se procedió con la colocación de una planta de energía de emergencia, con lo que el servicio se restablecio y se mantuvo estable.',
    /*cierreImputable*/'Bestel',
    /*inicio INC*/'2018/06/29 00:46',
    /*finINC*/'2018/06/29 10:10',
    /*EstadoProblema*/'Resuelto',
    /*AreaResolutora*/'Siar',
    /*proveedor*/NULL,
    /*afectacion*/'Falla de Energia Electrica'
);

/*Ingresa información del cliente*/
INSERT INTO clientes(idCliente, nombreCliente, giro, sla, empresaGestora)
VALUES(
	/*idCliente*/33254,
    /*nombreCliente*/'95/24 Mexico S de RL de CV',
    /*giro*/'Empresas Mexico',
    /*sla*/240,
    /*empresaGestora*/'Bestel'
);

/*Ingresa información del servicio*/
INSERT INTO servicios(circuito, idCliente, servicio, producto, circuitoM6, circuitoSolar,
	circuitoSicab, estadoDestino, sitio)
VALUES(
	/*circuito*/'10208-INT-001',
    /*idCliente*/33254,
    /*servicio*/'Internet Dedicado 40 Mbps',
    /*producto*/'Internet',
	/*circuitoM6*/'100/INTF/2057296300AZCPDF001',
    /*circuitoSolar*/'239563',
    /*circuitoSicab*/NULL,
    /*EstadoDestino*/'Ciudad de Mexico',
    /*Sitio*/'AV San Isidro 110'
);

/*Relaciona el INC y el servicio*/
INSERT INTO incidenteServicio(idIncidente, circuito, inicioAfectacionFalla, finAfectacionFalla)
VALUES(
	/*idINC*/'INC000000020926',
	/*circuito*/'10208-INT-001',
    /*inicioFalla*/'2018/06/29 00:42',
    /*finFalla*/'2018/06/29 01:25'
);

/*Ingresa la información del proceso de creación del RFO*/
INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud, fechaEnvioValidacion, 
	responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, responsableVistoBueno, 
	fechaEnvioRfo, responsableEnvioRfo, medio, observaciones)
VALUES(
	/*idRFO*/'RFO000000021015',
    /*idINC*/'INC000000021015',
    /*estatus*/'N/A',
    /*fechaSolicitud*/'2018/07/02 13:44',
    /*respSolicitud*/'Roxana Mena Alonso <rmenaal@bestel.com.mx>',
	/*fechaValidacion*/NULL,
    /*respEnvioVal*/NULL,
    /*respValidacion*/NULL,
    /*fechaVoBo*/NULL,
    /*respVoBo*/NULl,
    /*fechaEnvioRfo*/NULL,
    /*respEnvioRfo*/NULL,
    /*medio*/'Mail',
    /*observacion*/NULL
);

INSERT INTO usuarios(usuario, contrasena)
VALUES
('hgarciam@bestel.com.mx', '1234');
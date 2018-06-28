USE nmc;
/*Ingresa información del INC*/
INSERT INTO incidentes(idIncidente, incPadre, asociacion, tipoInforme, criticidad, prioridad, tipoProblema,
    causa, resolucion, cierreImputable, inicioAfectacionInc, finAfectacionInc, estadoProblema, areaResolutora,
    proveedor, afectacion)
VALUES(
	/*idIncidente*/'INC000000018544',
	/*incPadre*/null,
    /*asociacion*/'Sin Relacion',
    /*tipoInforme*/'Proactivo',
    /*criticidad*/'Alta',
    /*prioridad*/'2',
    /*tipoProblema*/'Enlace Fuera de Servicio', 
    /*causa*/'Se encuentra hilo dañado a los 4.96Km del sitio del cliente, entre calle 8 de julio esquina Colon a causa de jalón de fibra por camión con exceso de dimensiones.', 
    /*resolucion*/'Se realizó fusión de hilo mediante actividades de empalme, al término de los trabajos el servicio restablecido de forma correcta.',
    /*cierreImputable*/'Bestel',
    /*inicio INC*/'2018/06/13 18:04',
    /*finINC*/'2018/06/14 12:30',
    /*EstadoProblema*/'Cerrado',
    /*AreaResolutora*/'Tier1',
    /*proveedor*/'METROCARRIER',
    /*afectacion*/'Corte de Fibra Optica'
);

/*Ingresa información del cliente*/
INSERT INTO clientes(idCliente, nombreCliente, giro, sla, empresaGestora)
VALUES(
	/*idCliente*/30173,
    /*nombreCliente*/'Kio Networks',
    /*giro*/'Corporativo',
    /*sla*/240,
    /*empresaGestora*/'Metrored'
);

/*Ingresa información del servicio*/
INSERT INTO servicios(circuito, idCliente, servicio, producto, circuitoM6, circuitoSolar,
	circuitoSicab, estadoDestino, sitio)
VALUES(
	/*circuito*/'9879-MPL-002',
    /*idCliente*/34015,
    /*servicio*/'MPLS Multimedia 10 Mbps',
    /*producto*/'MPLS',
	/*circuitoM6*/NULL,
    /*circuitoSolar*/NULL,
    /*circuitoSicab*/NULL,
    /*EstadoDestino*/'Sonora',
    /*Sitio*/'Carr. a Bahia de Kino Km. 14'
);

/*Relaciona el INC y el servicio*/
INSERT INTO incidenteServicio(idIncidente, circuito, inicioAfectacionFalla, finAfectacionFalla)
VALUES(
	/*idINC*/'INC000000018544',
	/*circuito*/'9584-INT-002',
    /*inicioFalla*/'2018/06/13 17:52',
    /*finFalla*/'2018/06/14 11:42'
);

/*Ingresa la información del proceso de creación del RFO*/
INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud, fechaEnvioValidacion, 
	responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, responsableVistoBueno, 
	fechaEnvioRfo, responsableEnvioRfo, medio, observaciones)
VALUES(
	/*idRFO*/'RFO000000019336',
    /*idINC*/'INC000000019336',
    /*estatus*/'Enviado',
    /*fechaSolicitud*/'2018-06-21 13:37:00',
    /*respSolicitud*/'Adrian Noguchi Montiel <p-anoguchi@bestel.com.mx>',
	/*fechaValidacion*/'2018-06-21 18:04:00',
    /*respEnvioVal*/'Jose De Jesus Fuentes Galindo <p-jdfuentes@bestel.com.mx>',
    /*respValidacion*/'Jorge Carlos Gamboa Huerta <jcgamboah@bestel.com.mx>',
    /*fechaVoBo*/'2018/06/21 18:52',
    /*respVoBo*/'Jorge Carlos Gamboa Huerta <jcgamboah@bestel.com.mx>',
    /*fechaEnvioRfo*/'2018/06/21 18:56',
    /*respEnvioRfo*/'Jose De Jesus Fuentes Galindo <p-jdfuentes@bestel.com.mx>',
    /*medio*/'Mail',
    /*observacion*/null
);

    
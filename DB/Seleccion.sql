USE nmc;
Select incidentes.idIncidente, rfo.idIncidente, rfo.estatus, clientes.giro, clientes.nombreCliente,
	rfo.medio, rfo.fechaSolicitud, rfo.responsableSolicitud, rfo.fechaEnvioValidacion, rfo.responsableEnvioValidacion,
    rfo.responsableValidacion, rfo.fechaVistoBueno, rfo.responsableVistoBueno, rfo.fechaEnvioRfo, rfo.responsableEnvioRfo,
    incidentes.incPadre, rfo.observaciones, incidentes.areaResolutora, clientes.empresaGestora
FROM rfo, incidentes, incidenteServicio, clientes, servicios
WHERE rfo.idIncidente=incidentes.idIncidente 
AND incidentes.idIncidente = incidenteServicio.idIncidente
AND incidenteServicio.circuito=servicios.circuito
AND servicios.idCliente = clientes.idCliente;

SELECT *
FROM clientes;

SELECT *
FROM incidentes;
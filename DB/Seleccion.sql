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



INSERT INTO participacionRfo(idRfo, usuario, participacion, fecha, observaciones)
SELECT idRfo, responsableEnvioRfo, 'Envio RFO', fechaEnvioRfo, null
FROM rfo
WHERE NOT ISNULL(responsableEnvioRfo);

UPDATE participacionRfo
SET participacion='Envio RFO'
WHERE usuario='p-jdfuentes@bestel.com.mx'
AND participacion='Visto Bueno RFO';

SELECT * FROM participacionRfo;


INSERT IGNORE INTO usuarios(usuario, contrasena, nombre, puesto, area)
SELECT DISTINCT responsableVistoBueno, '1234', 'Generico', 'Generico', 'Generico'
FROM rfo
WHERE NOT ISNULL(responsableValidacion);

UPDATE rfo
SET responsableEnvioRfo='dudiazg@bestel.com.mx'
WHERE responsableEnvioRfo='David Ulises Diaz Garcilazo <dudiazg@bestel.com.mx>';

SELECT *
FROM rfo;

SELECT *
FROM usuarios;

USE nmc;

/*Actualizar Incidente*/
UPDATE incidentes
SET causa='Se presenta doble evento óptico en la trayectoria: 1. Corte de fibra óptica en la trayectoria de Backbone entre Cd. Juarez – Moctezuma, causado por corto circuito que quemo la fibra óptica aérea. 2. Corte de fibra óptica en la trayectoria de Backbone entre Equinix – Laredo, causado por vandalismo.'
WHERE idIncidente='INC000000018676';

UPDATE incidentes
SET resolucion='Se procedió con la colocación de una planta de energía de emergencia, con lo que el servicio se restablecio y se mantuvo estable.'
WHERE idIncidente='INC000000020926';

UPDATE incidentes
SET areaResolutora='Tier1'
WHERE idIncidente='INC000000018692';

/*Actualiza ServicioIncidente*/
UPDATE incidenteServicio
SET inicioAfectacionFalla='2018/06/19 12:30'
WHERE idIncidente='INC000000018676';

UPDATE incidenteServicio
SET finAfectacionFalla='2018/06/19 17:08'
WHERE idIncidente='INC000000018676';

/*Actualizar RFO*/
UPDATE rfo
SET responsableValidacion='jjaguilarac@bestel.com.mx'
WHERE idIncidente='INC000000018692';

UPDATE rfo
SET fechaVistoBueno='2018/07/02 19:35'
WHERE idIncidente='INC000000018676';

UPDATE rfo
SET responsableVistoBueno='aasuppendi@bestel.com.mx'
WHERE idIncidente='INC000000018676';

UPDATE rfo
SET fechaEnvioRfo='2018/07/03 13:49'
WHERE idIncidente='INC000000018676';

UPDATE rfo
SET responsableEnvioRfo='p-jdfuentes@bestel.com.mx'
WHERE idIncidente='INC000000018676';

UPDATE rfo
SET estatus='Enviado'
WHERE idIncidente='INC000000018676';

UPDATE rfo
SET observaciones='El RFO no procede por tratarse de Falla en Llamadas Entrantes'
WHERE idIncidente='INC000000021015';

update incidentes
set finAfectacionInc='2018/06/29 10:10'
where idIncidente='INC000000020926';
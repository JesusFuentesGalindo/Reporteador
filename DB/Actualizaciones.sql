USE nmc;

/*Actualizar Incidente*/
UPDATE incidentes
SET causa='Se detectan intermitencias causadas por el daño de un conector en el CTC de C+.'
WHERE idIncidente='INC000000020613';

UPDATE incidentes
SET resolucion='Se procede con el remplazo del conector, con lo que el servicio se restablece y se mantiene estable'
WHERE idIncidente='INC000000020613';

/*Actualizar RFO*/
UPDATE rfo
SET fechaVistoBueno='2018/07/02/ 18:11'
WHERE idIncidente='INC000000020613';

UPDATE rfo
SET responsableVistoBueno='dudiazg@bestel.com.mx'
WHERE idIncidente='INC000000020613';

UPDATE rfo
SET fechaEnvioRfo='2018/07/02/ 18:34'
WHERE idIncidente='INC000000020613';

UPDATE rfo
SET responsableEnvioRfo='p-jdfuentes@bestel.com.mx'
WHERE idIncidente='INC000000020613';

UPDATE rfo
SET estatus='Enviado'
WHERE idIncidente='INC000000020613';
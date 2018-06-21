CREATE DATABASE nmc;
USE nmc;
CREATE TABLE incidentes(
	idIncidente VARCHAR(15) NOT NULL,
    incPadre VARCHAR(15) NULL,
    asociacion ENUM('Padre', 'Hijo','Sin Relación') NOT NULL,
    tipoInforme ENUM('Reactivo', 'Proactivo', 'Requerimiento') not null,
    criticidad ENUM('Crítica', 'Alta', 'Media', 'Baja') NOT NULL,
    prioridad ENUM('1', '2', '3', '4'),
    tipoProblema VARCHAR(60) NOT NULL,
    inicioAfectacionFalla DATETIME NOT NULL,
    finAfectacionFalla DATETIME NOT NULL,
    causa VARCHAR(8000) NOT NULL,
    resolucion VARCHAR(8000) NOT NULL,
    PRIMARY KEY(idIncidente)
);

CREATE TABLE servicios(
	
    circuito VARCHAR(100) NOT NULL,
    idCliente INT NOT NULL,
    PRIMARY KEY(circuito),
    FOREIGN KEY(idCliente) REFERENCES clientes(idCliente)
);

CREATE TABLE incidenteServicio(
	idIncidente VARCHAR(15) NOT NULL,
    circuito VARCHAR(100) NOT NULL,
    PRIMARY KEY(idIncidente, circuito),
    FOREIGN KEY(idIncidente) REFERENCES incidentes(idIncidente),
    FOREIGN KEY(circuito) REFERENCES servicios(circuito)
);

CREATE TABLE clientes(
	idCliente INT NOT NULL,
    nombreCliente VARCHAR(200) NOT NULL,
    giro ENUM('WHOLESALE', 'INICIATIVA PRIVADA', 'GOBIERNO') NOT NULL,
    PRIMARY KEY(idCliente)
);

CREATE TABLE rfo(
	idRfo VARCHAR(15) NOT NULL,
    idIncidente VARCHAR(15) NOT NULL,
    estatus ENUM('Pendiente', 'En Revisión', 'N/A', 'Enviado') NOT NULL,
    fechaSolicitud DATETIME NOT NULL,
    responsableSolicitud VARCHAR(150) NOT NULL,
    fechaValidacion DATETIME NOT NULL,
    responsableEnvioValidacion VARCHAR(150) NOT NULL,
    responsableValidacion VARCHAR(150) NOT NULL,
    fechaVistoBueno DATETIME NOT NULL,
    responsableVistoBueno VARCHAR(150),
    fechaEnvioRfo DATETIME NOT NULL,
    responsableEnvioRfo VARCHAR(150),
    medio ENUM('Mail', 'Teléfono') NOT NULL,
    area ENUM('Transporte', 'Tier1', 'Siar', 'Telefonia') NOT NULL,
    observaciones VARCHAR(250) NULL,
    PRIMARY KEY(idRfo, idIncidente),
    FOREIGN KEY(idIncidente) REFERENCES incidentes(idIncidente)
);
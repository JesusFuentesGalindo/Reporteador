CREATE DATABASE nmc;
USE nmc;
CREATE TABLE incidentes(
	idIncidente VARCHAR(15) NOT NULL,
    incPadre VARCHAR(15) NULL,
    asociacion ENUM('Padre', 'Hijo','Sin Relacion') NOT NULL,
    tipoInforme ENUM('Reactivo', 'Proactivo', 'Requerimiento') NOT NULL,
    criticidad ENUM('Critica', 'Alta', 'Media', 'Baja') NOT NULL,
    prioridad ENUM('1', '2', '3', '4') NOT NULL,
    tipoProblema VARCHAR(60) NOT NULL,
	causa VARCHAR(8000) NULL,
    resolucion VARCHAR(8000) NULL,
    cierreImputable ENUM('Bestel', 'Cliente') NULL,
    inicioAfectacionInc DATETIME NOT NULL,
    finAfectacionInc DATETIME NULL,
    estadoProblema ENUM('Cerrado', 'Abierto', 'Asignado', 'En Curso', 'Pendiente', 'Resuelto') NOT NULL,
    areaResolutora ENUM('Transporte', 'Tier1', 'Siar', 'Telefonia') NOT NULL,
    proveedor VARCHAR(50) NULL,
    afectacion VARCHAR(60) NULL,
    PRIMARY KEY(idIncidente)
);

CREATE TABLE servicios(
	
    circuito VARCHAR(100) NOT NULL,
    idCliente INT NOT NULL,
    servicio VARCHAR(100) NOT NULL,
    producto VARCHAR(100) NULL,
    circuitoM6 VARCHAR(100) NULL,
    circuitoSolar VARCHAR(100) NULL,
    circuitoSicab VARCHAR(100) NULL,
    segmento VARCHAR(100) NOT NULL,
    estadoDestino VARCHAR(100) NOT NULL,
    sitio VARCHAR(100) NULL,
    PRIMARY KEY(circuito),
    FOREIGN KEY(idCliente) REFERENCES clientes(idCliente)
);

CREATE TABLE incidenteServicio(
	idIncidente VARCHAR(15) NOT NULL,
    circuito VARCHAR(100) NOT NULL,
	inicioAfectacionFalla DATETIME NULL,
    finAfectacionFalla DATETIME NULL,
    PRIMARY KEY(idIncidente, circuito),
    FOREIGN KEY(idIncidente) REFERENCES incidentes(idIncidente) ON UPDATE CASCADE,
    FOREIGN KEY(circuito) REFERENCES servicios(circuito) ON UPDATE CASCADE
);

CREATE TABLE clientes(
	idCliente INT NOT NULL,
    nombreCliente VARCHAR(200) NOT NULL,
    giro ENUM('WHOLESALE', 'INICIATIVA PRIVADA', 'GOBIERNO') NOT NULL,
    sla INT NOT NULL,
    empresaGestora ENUM('Bestel', 'Metrored') NOT NULL,
    PRIMARY KEY(idCliente)
);

CREATE TABLE rfo(
	idRfo VARCHAR(15) NOT NULL,
    idIncidente VARCHAR(15) NOT NULL,
    estatus ENUM('Pendiente', 'En Revisión', 'N/A', 'Enviado') NOT NULL,
    fechaSolicitud DATETIME NOT NULL,
    responsableSolicitud VARCHAR(150) NOT NULL,
    fechaEnvioValidacion DATETIME NOT NULL,
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
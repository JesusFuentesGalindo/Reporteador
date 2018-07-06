<?php

$idRfo=$_POST['idRfo'];
$idIncidente=$_POST['idIncidente'];
$estatus=$_POST['estatus'];
$medio=$_POST['medio'];

/*Solicitud*/
$fechaSolicitud=$_POST['fechaSolicitud'];
$responsableSolicitud=$_POST['responsableSolicitud'];

/*Validacion*/
$responsableEnvioValidacion=$_POST['responsableEnvioValidacion'];
$fechaEnvioValidacion=$_POST['fechaEnvioValidacion'];
$responsableValidacion=$_POST['responsableValidacion'];

$link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');

$query="INSERT INTO rfo(idRfo, idIncidente, estatus, fechaSolicitud, responsableSolicitud,
    fechaEnvioValidacion, responsableEnvioValidacion, responsableValidacion, fechaVistoBueno, ResponsableVistoBueno,
    fechaEnvioRfo, responsableEnvioRfo, medio, observaciones)
    VALUES('$idRfo', '$idIncidente', '$estatus', '1900/01/01 00:00', 'Generico', NULL, NULL, '$responsableValidacion', NULL, NULL, NULL, NULL, '$medio', NULL)";

$resultado=mysqli_query($link, $query);

$query="INSERT INTO participacionRfo(idRfo, usuario, participacion, fecha, observaciones)
    VALUES('$idRfo', '$responsableSolicitud', 'Solicitud Creacion RFO', '$fechaSolicitud', null)";

$resultado=mysqli_query($link, $query);

$query=$query="INSERT INTO participacionRfo(idRfo, usuario, participacion, fecha, observaciones)
    VALUES('$idRfo', '$responsableEnvioValidacion', 'Solicitud Validacion RFO', '$fechaEnvioValidacion', null)";

$resultado=mysqli_query($link, $query);

$error=mysqli_error($link);

echo $error;

mysqli_close($link);

header("Location: /INCs/Form/alta.html")
?>
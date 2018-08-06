<?php
//Datos de Solicitud
$idIncidente=$_POST['inc'];
$idRfo=str_replace("INC", "RFO", $idIncidente);
$estatus="Pendiente";
$medio=$_POST['medio'];
$observaciones=$_POST['observaciones'];

$fechaSolicitud=$_POST['fecha'];
$responsableSolicitud=$_POST['idUsuario'];
$nombreResponsable=$_POST['nombreUsuario'];

//Preparar conexion
$link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
mysqli_set_charset($link, 'utf8');

//Insertar INC
$query="INSERT INTO incidentes(idIncidente) VALUES('$idIncidente')";
$resultado=mysqli_query($link, $query);


//Insertar RFO
$query="INSERT INTO rfo(idRfo, idIncidente, estatus, responsableValidacion, medio, observaciones)
    VALUES('$idRfo', '$idIncidente', '$estatus', 'Generico', '$medio', NULL)";
$resultado=mysqli_query($link, $query);

//Insertar Usuario
$query="INSERT INTO usuarios(usuario, contrasena, nombre, puesto, area)
    VALUES('$responsableSolicitud', '1234', '$nombreResponsable', 'Generico', 'Generico')";
$resultado=mysqli_query($link, $query);
echo $resultado;

//Insertar participacion
$query="INSERT INTO participacionRfo(idRfo, usuario, participacion, fecha, observaciones)
    VALUES('$idRfo', '$responsableSolicitud', 'Solicitud Creacion RFO', '$fechaSolicitud', '$observaciones')";
$resultado=mysqli_query($link, $query);


$error=mysqli_error($link);

echo $error;

mysqli_close($link);

header("Location: /WebContent/RFOs/Form/solicitudRfo.html")
?>
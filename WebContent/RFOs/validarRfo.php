<?php
    
    $supervisor=$_GET['supervisor'];
    $idIncidente=$_POST['idIncidente'];
    $causa=$_POST['causa'];
    $resolucion=$_POST['resolucion'];
    $circuito=$_POST['circuito'];
    $inicioFalla=$_POST['inicioFalla'];
    $finFalla=$_POST['finFalla'];
    
    $link=mysqli_connect('localhost', 'administradorlocal', 'AdminJesus3010', 'nmc');
    mysqli_set_charset($link, 'utf8');
    
    $query="UPDATE incidentes SET causa='$causa', resolucion='$resolucion' WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    $query="UPDATE incidenteServicio SET circuito='$circuito', inicioAfectacionFalla='$inicioFalla', finAfectacionFalla='$finFalla' WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    $localTime=localtime();
    $anio=$localTime[5]+1900;
    $mes=$localTime[4]+1;
    $dia=$localTime[3];
    $query="UPDATE rfo SET estatus='Validado', fechaVistoBueno='$anio/$mes/$dia $localTime[2]:$localTime[1]', 
    responsableVistoBueno='$supervisor' WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    mysqli_close($link);
    
    header("Location: ../incAsignado.php/?usuario=$supervisor");
?>
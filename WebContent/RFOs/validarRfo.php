<?php
    
    $supervisor=$_GET['supervisor'];
    $idIncidente=$_POST['idIncidente'];
    $causa=$_POST['causa'];
    $resolucion=$_POST['resolucion'];
    $circuito=$_POST['circuito'];
    $inicioFalla=$_POST['inicioFalla'];
    $finFalla=$_POST['finFalla'];
    
    $link=mysqli_connect('localhost', 'administrador_local', 'AdminMySql', 'nmc');
    
    $query="UPDATE incidentes SET causa='$causa', resolucion='$resolucion', inicioAfectacionInc='$inicioFalla', finAfectacionInc='$finFalla', tipoInforme='Proactivo' WHERE idIncidente='$idIncidente'";
    
    $resultado=mysqli_query($link, $query);
    
    mysqli_close($link);
    
    header("Location: ../incAsignado.php/?usuario=$supervisor");
?>
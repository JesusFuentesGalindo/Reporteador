<?php
    
    $usuario=$_POST['usuario'];
    $idIncidente=$_POST['idIncidente'];
    $causa=$_POST['causa'];
    $resolucion=$_POST['resolucion'];
    $circuito=$_POST['circuito'];
    $inicioFalla=$_POST['fechaInicio'];
    $finFalla=$_POST['fechaFin'];
    $fallaReportada=$_POST['fallaReportada'];
    $idRfo=str_replace('INC', 'RFO', $idIncidente);
    $mod=$_POST['mod'];
    
    switch($mod){
        
        case 0:
            $participacion='Solicitud Validacion RFO';
            $estatus='En Revision';
            $regreso='estatusRfo';
        break;
        case 1:
            $participacion='Visto Bueno RFO';
            $estatus='Validado';
            $regreso='incAsignado';
        break;
    }
    
    $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
    mysqli_set_charset($link, 'utf8');
    
    $query="UPDATE incidentes SET causa='$causa', resolucion='$resolucion', tipoProblema='$fallaReportada'  WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    $query="UPDATE incidenteservicio SET circuito='$circuito', inicioAfectacionFalla='$inicioFalla', finAfectacionFalla='$finFalla' WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    $localTime=localtime();
    $anio=$localTime[5]+1900;
    $mes=$localTime[4]+1;
    $dia=$localTime[3];
    
    $query="UPDATE rfo SET estatus='$estatus' WHERE idIncidente='$idIncidente'";
    $resultado=mysqli_query($link, $query);
    
    $query="INSERT INTO participacionrfo(idRfo, usuario, participacion, fecha, observaciones)
    Values ('$idRfo', '$usuario', '$participacion', '$anio/$mes/$dia $localTime[2]:$localTime[1]', '')";
    $resultado=mysqli_query($link, $query);
    
    echo $error=mysqli_error($link);
    echo $causa;
    echo $resolucion;

    mysqli_close($link);
    
    header("Location: /WebContent/RFOs/php/$regreso.php/?usuario=$usuario");
    
    //echo $localTime[2];
    //echo $usuario;
    //echo $estatus;
?>
<?php
    $idIncidente=$_POST['idIncidente'];
    $incPadre=$_POST['incPadre'];
    $asociacion=$_POST['asociacion'];
    $tipoInforme=$_POST['tipoInforme'];
    $criticidad=$_POST['criticidad'];
    $prioridad=$_POST['prioridad'];
    $tipoProblema=$_POST['tipoProblema'];
    $causa=$_POST['causa'];
    $resolucion=$_POST['resolucion'];
    $cierreImputable=$_POST['cierreImputable'];
    $inicioAfectacionInc=$_POST['inicioAfectacionInc'];
    $finAfectacionInc=$_POST['finAfectacionInc'];
    $estadoProblema=$_POST['estadoProblema'];
    $areaResolutora=$_POST['areaResolutora'];
    $proveedor=$_POST['proveedor'];
    $afectacion=$_POST['afectacion'];
    
    /*----Circuito-----*/
    $circuito=$_POST['circuito'];
    $inicioAfectacionFalla=$_POST['inicioAfectacionFalla'];
    $finAfectacionFalla=$_POST['finAfectacionFalla'];
    
    
    $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
    
       
    $query="INSERT INTO incidentes(`idIncidente`, `incPadre`, `asociacion`, `tipoInforme`, `criticidad`, `prioridad`, `tipoProblema`, `causa`, `resolucion`, `cierreImputable`, `inicioAfectacionInc`, `finAfectacionInc`, `estadoProblema`, `AreaResolutora`, `proveedor`, `afectacion`)
    VALUES('$idIncidente', '$incPadre', '$asociacion', '$tipoInforme', '$criticidad', '$prioridad', '$tipoProblema', '$causa', '$resolucion', '$cierreImputable', '$inicioAfectacionInc', '$finAfectacionInc', '$estadoProblema', '$areaResolutora', '$proveedor', '$afectacion');";
    $resultado=mysqli_query($link, $query);
    
    $query="INSERT INTO incidenteServicio(idIncidente, circuito, inicioAfectacionFalla, finAfectacionFalla)
    VALUES($idIncidente, $circuito, $inicioAfectacionFalla, $finAfectacionFalla)";
    $resultado=mysqli_query($link, $query);
    
    //mysqli_free_result($resultado);
    $error=mysqli_error($link);
    mysqli_close($link);
    
    echo $error;
    
    header("Location: /RFOs/Form/controlRfo.html");
    
    /*echo "$idIncidente <br />";
    echo "$incPadre<br />";
    echo "$asociacion<br />";
    echo "$tipoInforme<br />";
    echo "$criticidad<br />";
    echo "$prioridad<br />";
    echo "$tipoProblema<br />";
    echo "$causa<br />";
    echo "$resolucion<br />";
    echo "$cierreImputable<br />";
    echo "$inicioAfectacionInc<br />";
    echo "$finAfectacionInc<br />";
    echo "$estadoProblema<br />";
    echo "$areaResolutora<br />";
    echo "$proveedor<br />";
    echo "$afectacion<br />";*/
?>
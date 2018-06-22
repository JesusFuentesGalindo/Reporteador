<?php
    $idIncidente=$_POST['idIncidente'];
    $incPadre=$_POST['incPadre'];
    $asociacion=$_POST['asociacion'];
    $tipoInforme=$_POST['tipoInforme'];
    $criticidad=$_POST['criticidad'];
    $prioridad=$_POST['prioridad'];
    $tipoProblema=$_POST['tipoProblema'];
    $inicioAfectacionFalla=$_POST['inicioAfectacionFalla'];
    $finAfectacionFalla=$_POST['finAfectacionFalla'];
    $causa=$_POST['causa'];
    $resolucion=$_POST['resolucion'];
    $cierreImputable=$_POST['cierreImputable']
    $inicioAfectacionInc=$_POST['inicioAfectacionInc'];
    $finAfectacionInc=$_POST['finAfectacionInc'];
    $estadoProblema=$_POST['estadoProblema'];
    $areaResolutora=$_POST['areaResolutora'];
    $proveedor=$_POST['proveedor'];
    $afectacion=$_POST['afectacion'];
    
    $link=mysqli_connect('localhost', 'administradorlocal', 'AdminMySql');
    mysqli_select_db('nmc');
    
    $query='';
    $resultado=mysqli_query($link, $query);
    mysqli_free_result($resultado);
    mysqli_close($link);
?>
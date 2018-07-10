<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="author" content="Jose de Jesus Fuentes Galindo" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    	<link rel="stylesheet" type="text/css" href="../../css/consultaRfo.css" />
        <title>Gestión de RFOs</title>
    </head>

    <body>
        <div id="principal">
        	<?php 
        	   $inc=$_GET['inc'];
        	   $supervisor=$_GET['supervisor'];
                echo "<header>";
            	echo   "<h1>Sistema de Gestión de RFOs</h1>";
            	echo   "<p><a href='../incAsignado.php/?usuario=$supervisor'>Regresar</a></p>";
                echo "</header>";
            
            $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
            mysqli_set_charset($link, 'utf8_general_ci');
            $query="SELECT incPadre, causa, resolucion, 
            incidenteServicio.circuito, incidenteServicio.inicioAfectacionFalla,
            incidenteServicio.finAfectacionFalla FROM incidentes, incidenteServicio WHERE incidentes.idIncidente = incidenteServicio.idIncidente
            AND incidentes.idIncidente='$inc'";
            
            if($sentencia=mysqli_prepare($link, $query)){
                mysqli_stmt_execute($sentencia);
                mysqli_stmt_bind_result($sentencia, $incPadre, $causa, $resolucion, $circuito, $inicioFalla, $finFalla);
            
            
            
                $reg=0;
                while($row=mysqli_stmt_fetch($sentencia)){
                    $reg++;
                    if($reg==1){
                        echo "<form method='post' action='../validarRfo.php/?supervisor=$supervisor'>";
                        
                        echo "<fieldset>";
                        echo "<legend>Identificador de Incidente</legend>";
                        echo    "<label>INC:<input type='text' name='idIncidente' readonly='readonly' value='$inc' /></label>";
                        echo    "<label>INC Padre:<input type='text' readonly='readonly' value='$incPadre' /></label>";
                        echo "</fieldset>";
                        
                        echo "<fieldset>";
                        echo "<legend>Solución Reportada</legend>";
                        echo    "<label>Causa:<textarea name='causa' rows='5' cols='50'>$causa</textarea></label>";
                        echo    "<label>Resolución:<textarea name='resolucion' rows='5' cols='50'>$resolucion</textarea></label>";
                        echo "</fieldset>";
                        
                        echo "<fieldset>";
                        echo    "<legend>Servicio Afectado</legend>";
                    }
                     
            
                    echo "<label>Circuito:<input type='text' name='cirucuito' value='$circuito' /></label>";
                    echo "<label>Inicio Falla:<input type='text' name='inicioFalla' value='$inicioFalla' min='2017-12-01' /></label>";
                    echo "<label>Fin Falla:<input type='text' name='finFalla' value='$finFalla' /></label>";

                }
                
                echo        "</fieldset>";
                echo        "<label>Apruebas <input type='radio' name='validacion' value='1' checked onchange='habilitarObs()'/></label>";
                echo        "<label>No Apruebas <input type='radio' name='validacion' value='0' /></label>";
                echo        "<label id='obs' style='display: none;'>Observaciones:<textarea name='observaciones' rows='5' cols='5'></textarea></label>";
                echo        "<input type='submit' value='Validar' />";
                echo    "</form>";
                mysqli_stmt_close($sentencia);
            }
            <script>
                
            </script>
            mysqli_close($link);
            ?>
            <
        </div>
    </body>
</html>
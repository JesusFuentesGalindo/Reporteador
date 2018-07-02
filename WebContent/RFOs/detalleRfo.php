<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>Gestión de RFOs</title>
	</head>
	
	<body>
		<div id="principal">
            <?php
                $inc=$_GET['inc'];
                $supervisor=$_GET['supervisor'];
                
                $link=mysqli_connect('localhost', 'administrador_local', 'AdminMySql', 'nmc');
                $query="SELECT incPadre, causa, resolucion, inicioAfectacionInc, finAfectacionInc FROM incidentes WHERE idIncidente ='$inc'";
                
                if($sentencia=mysqli_prepare($link, $query)){
                    mysqli_stmt_execute($sentencia);
                    mysqli_stmt_bind_result($sentencia, $incPadre, $causa, $resolucion, $inicioFalla, $finFalla);
                    
                    
                    
                    $reg=0;
                    while($row=mysqli_stmt_fetch($sentencia)){
                        $reg++;
                        if($reg==1){
                        echo "<form method='post' action='../validarRfo.php/?supervisor=$supervisor'>";
                        echo "<label>INC:<input type='text' name='idIncidente' readonly='readonly' value='$inc' /></label>";
                        echo "<label>INC Padre:<input type='text' readonly='readonly' value='$incPadre' /></label>";
                        echo "<label>Causa:<textarea name='causa' rows='3'>$causa</textarea></label>";
                        echo "<label>Resolución:<textarea name='resolucion' rows='3'>$resolucion</textarea></label>";
                        }
                        
                        
                        echo "<label>Circuito:<input type='text' name='cirucuito'/></label>";
                        echo "<label>Inicio Falla:<input type='datetime-local' name='inicioFalla' value='$inicioFalla' /></label>";
                        echo "<label>Fin Falla:<input type='datetime-local' name='finFalla' value='$finFalla' /></label>";
                        echo "<input type='submit' value='Validar' />";
                    }
                    echo "</form>";
                    mysqli_stmt_close($sentencia);
                }
                mysqli_close($link);
            ?>
            
            <form>
            </form>
        </div>
    </body>
</html>
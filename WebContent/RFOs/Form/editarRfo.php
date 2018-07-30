<!DOCTYPE html>
<html lang="es-MX">

<?php
    
    //Cual es la empresa que gestiona al cliente.
    //Para contestar a la pregunta se realiza una conexi�n a la base de datos.
    $inc=$_GET['inc'];
    $mod=$_GET['mod'];
    $usuario=$_GET['usuario'];
        
    $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
    mysqli_set_charset($link, 'utf8');
    
    $query="SELECT
            nombreCliente,
            servicios.circuito,
            circuitoM6,
            circuitoSicab,
            tipoProblema,
            inicioAfectacionFalla,
            finAfectacionFalla,
            causa,
            resolucion,
            accionesPendientes,
            empresaGestora 
        FROM 
            clientes,
            incidentes,
            incidenteservicio,
            servicios
        WHERE
            incidentes.idIncidente = '$inc'
            AND incidentes.idIncidente=incidenteservicio.idIncidente
            AND incidenteservicio.circuito=servicios.circuito
            AND clientes.idCliente=servicios.idCliente";
    
    $sentencia=mysqli_prepare($link, $query);
    mysqli_stmt_execute($sentencia);
    mysqli_stmt_bind_result($sentencia, 
          $nombreCliente, 
          $circuito, 
          $circuitoM6, 
          $circuitoSicab, 
          $tipoProblema, 
          $inicioFalla, 
          $finFalla,
          $causa,
          $resolucion,
          $accionesPendientes,
          $empresaGestora);
    mysqli_stmt_fetch($sentencia);
    
    $dateTime1 = date_create($inicioFalla);
    $dateTime2 = date_create($finFalla);
    $interval=date_diff($dateTime2, $dateTime1);
    
    switch($mod){
        case 0:
            $regreso="estatusRfo";
            $AccBtn="Crear";
        break;
        case 1:
            $regreso="incAsignado";
            $AccBtn="Validar";
        break;
    }
    
?>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<link rel="stylesheet" type="text/css" href="/WebContent/RFOs/css/rfo<?php echo $empresaGestora;?>.css" />
		<title>Editar RFO</title>
		<script type="text/javascript">
    		function difer(){
    			var fecha1= new Date(document.getElementsByName('inicioFalla').value);
    			var fecha2= new Date(document.getElementsByName('finFalla').value);
    			var diffDays=fecha2.getDate() - fecha1.getDate();
    
    			document.getElementsByName('afectacion').value=diffDays;
    
    			window.alert(fecha1);
    		}
    	</script>
	</head>
	
	<body>
		
		<div id="grpoMenu">
			<nav>
				<ul>
					<li><a href="/WebContent/RFOs/php/<?php echo $regreso . ".php?usuario=$usuario";?>">Regresar</a></li>
				</ul>
			</nav>
		</div>
	
		<div id="principal">
    		
    		<?php 
        		if($empresaGestora=='Bestel'){
        		  echo "<header id='encabezado'>";
        			
        			echo "<figure id='logo'>";
        				echo "<img  alt='logo Bestel' src='/WebContent/CrearReporte/img/logo.png' />";
        			echo "</figure>";
        			
        			echo "<div id='infoRfo'>";
            			echo "<p class='info1'>NOC</p>";
            			echo "<p class='info1'>Network Operation Center</p>";
            			echo "<p>NOC-" . date('Ymd') . "</p>";
            			echo "<p>Pág 1 de 1</p>";
        			echo "</div>";
        			
        			echo "<h1>Reporte de Falla</h1>";
        			
        			echo "<figure id='separador'>";
        				echo "<img alt='Separador de sección' src='/WebContent/CrearReporte/img/linea.png' />";
        			echo "</figure>";
        			
        		echo "</header>";
        		
        		echo "<section>";
        			echo "<form id='formularioRfo' action='/WebContent/RFOs/php/validarRfo.php' method='post'>";
        			    echo "<input type='hidden' name='mod' value='$mod' />";
        			    echo "<input type='hidden' name='usuario' value='$usuario' />";
        				echo "<table id='tablaFormRfo'>";
        				
        					echo "<thead>";
        						echo "<tr><th class='fondoVerde'>RUBRO</th><th class='fondoVerde'>DETALLE</th></tr>";
        					echo "</thead>";
        					
        					echo "<tbody>";
        						echo "<tr><td><label>Cliente:</label></td><td><input type='text' name='cliente' value='$nombreCliente' readonly='readonly' size='75' /></td></tr>";
        						if ($circuitoM6 != ""){
        						    $value=$circuitoM6;
        						}else if($circuitoSicab != ""){
        					        $value=$circuitoSicab;
        						}else{
        						    $value=$circuito;
        						}
        						echo "<tr><td><label>ID de Servicio:</label></td><td><input type='text' name='circuito' value='$value'size='75' /></td></tr>";
        						echo "<tr><td><label>Número de Reporte:</label></td><td><input type='text' name='idIncidente' value='$inc' readonly='readonly' size='75' /></td></tr>";
        						echo "<tr><td><label>Falla Reportada:</label></td><td><input type='text' name='fallaReportada' value='$tipoProblema' size='75' /></td></tr>";
        						echo "<tr><td><label>Fecha y Hora de Inicio:</label></td><td><input type='text' name='inicioFalla' value='$inicioFalla' size='75' onChange='difer()' /></td></tr>";
        						echo "<tr><td><label>Fecha y Hora de Fin:</label></td><td><input type='text' name='finFalla' value='$finFalla' size='75' onChange='difer()' /></td></tr>";
        						echo "<tr><td><label>Tiempo Total de Afectación:</label></td><td><input type='text' name='afectacion' disabled='disabled'/></td></tr>";
        						echo "<tr><td><label>Causa de la Falla:</label></td><td><textarea name='causa' rows='4' cols='55'>$causa</textarea></td></tr>";
        						echo "<tr><td><label>Actividades para Restablecimiento:</label></td><td><textarea name='resolucion' rows='4' cols='55'>$resolucion</textarea></td></tr>";
        					echo "</tbody>";
        				echo "</table>";
        				echo "<input id='btnEnviar' type='submit' value='$AccBtn' />";
        			echo "</form>";
        			
        			echo "<div id='infoBestel'>";
            			echo "<p class='txtVerde'>NOC</p>";
            			echo "<p>Network Operation Center</p>";
            			echo "<p>(55) 4000 2222</p>";
            			echo "<p>Bestel</p>";
            			echo "<p>Email: <a href='mailto:noc_soporte@bestel.com.mx'>noc_soporte@bestel.com.mx</a>";
        			echo "</div>";
        		echo "</section>";
        		
        		echo "<footer>";
        			
        			echo "<figure>";
        				echo "<img alt='Separador' src='../../CrearReporte/img/linea.png' />";
        			echo "</figure>";
        			
        			echo "<p>Santa Apolonia #9 Col. Santa Apolonia Azcapotzalco, México DF, CP 02790 T: (52) 55 4000 2100 F (52) 55 4000 2190</p>";
        		echo "</footer>";
        		}else{
        		    
        		    echo "<header id='encabezado'>";
        		    
            		    echo "<figure id='separadorMetro'>";
            		      echo "<img  alt='Separador' src='/WebContent/CrearReporte/img/lineaMetro.png' />";
            		    echo "</figure>";
        		    
        		    echo "</header>";
        		    
        		    echo "<section id='secInfo'>";
        		      echo "<form id='formularioRfo' action='/WebContent/RFOs/php/validarRfo.php' method='post'>";
        		      echo "<input type='hidden' name='mod' value='$mod' />";
        		      echo "<input type='hidden' name='usuario' value='$usuario' />";
        		          echo "<p><input class='negrita' type='text' name='cliente' value='$nombreCliente' size='75' /></p>";
        		          echo "<p class='negrita'>P R E S E N T E</p>";
        		          
        		          echo "<p class='contenido sangria'>Por este medio les enviamos un cordial saludo y manifestamos que en relación con el Trouble ticket ocurrido en días anteriores identificado con el caso <input type='text' name='idIncidente' value=$inc size='12' readonly='readonly' />; se tiene la siguiente información:</p>";
        		          
        		          echo "<table id='infoFalla'>";
            		          echo "<tr><td><label>Número de Circuito:</label></td><td><input type='text' name='circuito' value='$circuito' size='30' /></td></tr>";
            		          echo "<tr><td><label>Fecha y Hora de Inicio de Falla:</label></td><td><input type='text' name='inicioFalla' value='$inicioFalla' size='30' onChange='difer()' /></td></tr>";
            		          echo "<tr><td><label>Fecha y Hora de Fin de Falla:</label></td><td><input type='text' name='finFalla' value='$finFalla' size='30' onChange='difer()' /></td></tr>";
                              echo "<tr><td><label>Tiempo de Afectación:</label></td><td><input type='text' name='afectacion' size='30' readonly ='readonly' /></td></tr>";
                          echo "</table>";
                          
        		          echo "<p><label class='negrita'>Descripción del Problema:</label></p>";
                          echo "<p class='sangria contenido'><input type='text' name='fallaReportada' value='$tipoProblema' size='30' /></p>";
        		    
        		          echo "<p><label class='negrita'>Causa del Problema:</label></p>";
                          echo "<p class='sangria contenido'><textarea name='causa' rows='4' cols='95'>$causa</textarea></p>";
                          
        		          echo "<p><label class='negrita'>Acción Correctiva:</label></p>";
                          echo "<p class='sangria'><textarea name='resolucion' rows='4' cols='95'>$resolucion</textarea></p>";
        		          
        		          echo "<p class='negrita'>Acción Pendiente:</p>";
        		          echo "<p class='sangria'>Sin acciones pendientes.</p>";
        		          echo "<p class='sangria'>Esperando que este reporte sea de su utilidad, nos reiteramos a sus órdenes en espera de sus comentarios.</p>";
        		          
        		          echo "<input id='btnEnviar' type='submit' value='$AccBtn' />";
        		          
        		      echo "</form>";
        		      
        		      
        		          
        		    

        		    echo "</section>";
        		    
        		    echo "<footer>";
        		    
        		    echo "<figure>";
        		      echo "<img alt='Separador' src='/WebContent/CrearReporte/img/footMetro.png' />";
        		    echo "</figure>";
        		    
        		    echo "</footer>";
        		}
    		?>
    		
		</div>
	</body>
</html>
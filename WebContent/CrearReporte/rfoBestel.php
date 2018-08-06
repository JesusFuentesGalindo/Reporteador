<!DOCTYPE html>
<html lang=es-MX>
	<head>
		<meta charset="UTF-8" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<title>RFO Bestel</title>
		<script src="http://momentjs.com/downloads/moment.min.js"></script>
		<style type=text/css>
		      
           #encabezado{
            text-align: center;
           }
           
           #encabezado table{
            
            margin-left: 75px;
            margin-right: 75px;
           }
           
           #encabezado table tr td{
            
            width: 300px;
            text-align: left;
            padding: 0 0;
           }
           
           .derecha{
            
            text-align: right;
           }
           
           .fondoVerde{
	
	        background-color: #8ec03f;
            }
            
            #datos{
                
                margin-top: 20px;
                text-align: center;
            }
            
            #datos table tr td{
                
                width: 300px;
                padding: 10px 0px 10px 0;
                
                border: 2px solid  #d7d7c1;
                text-align: center;
            }
            
            #datos table{
                margin-left: 50px;
                border: 2px solid  #d7d7c1;
            }
            
            .centrado{
            
                margin: auto auto;
            }
            
            .noPadding{
                padding: 0 0;
            }
            
            #datosNoc{
                margin: 50px auto 0px auto;
                
                text-align: center;
            }
            
            #datosNoc p{
            
                margin: 0 0;
                padding: 0 0;
            }
            
            
            #foot{
                
                margin-top: 90px;
                text-align: center;
            }
            
            #principal{
	
	position: absolute;
		top: 0;
		bottom: 0;
	width: 100%;
	
	
}

        .textoVerde{
            
            color: #8ec03f;
        }
        
        .negrita{
            font-weight: bold;
        }
        
        .encabezado{
            font-size: 36px;
        }

		</style>
	</head>
	
	<?php
	
	$inc=$_GET['inc'];
	//Preparar conexion a base de datos
	$link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
	mysqli_set_charset($link, 'utf8');
	
	//Consulta
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
	
	if ($circuitoM6 != ""){
	    $value=$circuitoM6;
	}else if($circuitoSicab != ""){
	    $value=$circuitoSicab;
	}else{
	    $value=$circuito;
	}
	
	?>
	
	<body onload="diferFecha()">
		
		<div id="pincipal">
		<div id="encabezado">
			<table>
				<tr><td rowspan="4"><img src="img/logo.png" /></td><td class="derecha negrita encabezado">NOC</td></tr>
				<tr><td class="derecha negrita encabezado">Network Operation Center</td></tr>
				<tr><td class="derecha">NOC-<?php echo Date("Ymd"); ?></td></tr>
				<tr><td class="derecha">Pág 1 de 1</td></tr>
			</table>
			
			<h1>Reporte de Falla</h1>
			<img src="img/linea.png" />
		</div>
		
		<div id="datos">
			<table id='tablaDatos'>
        		<tr><th class='fondoVerde negrita'>RUBRO</th><th class='fondoVerde'>DETALLE</th></tr>
        		<tr><td>Cliente:</td><td class="negrita "><?php echo $nombreCliente; ?></td></tr>
        		<tr><td>ID de Servicio:</td><td><?php echo $value; ?></td></tr>
        		<tr><td>Número de Reporte:</td><td class="negrita"><?php echo $inc; ?></td></tr>
        		<tr><td>Falla Reportada:</td><td><?php echo $tipoProblema; ?></td></tr>
        		<tr><td>Fecha y Hora de Inicio:</td><td id="fechaInicio"><?php echo $inicioFalla; ?></td></tr>
        		<tr><td>Fecha y Hora de Fin:</td><td id="fechaFin"><?php echo $finFalla; ?></td></tr>
        		<tr><td>Tiempo Total de Afectación:</td><td id="afectacion" class="negrita"></td></tr>
        		<tr><td><p class="centrado">Causa de la Falla:</p></td><td><?php echo $causa; ?></td></tr>
        		<tr><td><p class="centrado">Actividades para Restablecimiento:</p></td><td><?php echo $resolucion; ?></td></tr>
        	</table>
		</div>
		
		<div id="datosNoc">
			<p class="textoVerde">NOC</p>
			<p class="negrita">Network Operation Center</p>
			<p class="negrita">(55) 4000 2222</p>
			<p class="negrita">Bestel</p>
			<p class="negrita">Email: <a href="mailto:noc_soporte@bestel.com.mx">noc_soporte@bestel.com.mx</a></p>
		</div>
		
		<div id="foot">
			<img src="img/linea.png">
			<p>Santa Apolonia #9 Col. Santa Apolonia Azcapotzalco, México DF, CP 02790 T (52) 55 4000 2100 F (52) 55 4000 2190</p>
		</div>
		</div>
		

	</body>
</html>

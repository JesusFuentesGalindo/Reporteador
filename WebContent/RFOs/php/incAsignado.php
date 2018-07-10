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
			<header>
				<h1>Sistema de Gestión de RFOs</h1>
				<p><a href="../acceso.php">Salir</a></p>
			</header>
    		<?php
    		  $supervisor=$_GET['usuario'];
    		  
    		  $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
    		  mysqli_set_charset($link, 'utf8_general_ci');
    		  $query="SELECT idIncidente, estatus, DATEDIFF(NOW(), P.fecha) AS diasValidacion FROM rfo, participacionRfo AS P 
              WHERE rfo.idRfo=P.idRfo 
              AND P.participacion='Solicitud Validacion RFO'
              AND estatus='En Revision'
              AND responsableValidacion='$supervisor'";
    		  
    		  if($sentencia=mysqli_prepare($link, $query)){
    		      
    		      mysqli_stmt_execute($sentencia);
    		      mysqli_stmt_bind_result($sentencia, $inc, $estatus, $diasValidacion);
    		      
    		      echo "<table id='incidentes'>";
    		      echo    "<caption>Incidentes en Validación </caption>";
    		      echo    "<thead id='encabezado'>";
    		      echo        "<tr>";
    		      echo            "<th>Incidente</th><th>Estatus</th><th>Días en Revisión</th>";
    		      echo        "</tr>";
    		      echo    "</thead>";
    		      
    		      echo    "<tbody class='cuerpo'>";
    		      
    		      $numIncs=0;
    		      while (mysqli_stmt_fetch($sentencia)){
    		          ++$numIncs;
    		          
    		          echo "<tr>";
                      echo      "<td><a href='../detalleRfo.php/?inc=$inc&supervisor=$supervisor'>$inc</a></td>";
                      echo      "<td>$estatus</td>";
                      echo      "<td>$diasValidacion</td>";
                      echo "</tr>";
    		      }
    		      
    		      echo    "</tbody>";
    		      echo    "<tfoot id='pie'>";
    		      echo        "<tr>";
    		      echo            "<th>Total de incidentes: $numIncs</th>";
    		      echo        "</tr>";
    		      echo    "</tfoot>";
    		      
    		      echo "</table>";
    		      mysqli_stmt_close($sentencia);
    		  }
    		  mysqli_close($link);
    		  
    		?>
		</div>
	</body>
</html>
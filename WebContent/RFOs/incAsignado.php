<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>Gestión de RFOs</title>
	</head>
	
	<body>
	<div id="principal"></div>
		<?php
		  $supervisor=$_GET['usuario'];
		  
		  $link=mysqli_connect('localhost', 'administradorlocal', 'AdminJesus3010', 'nmc');
		  mysqli_set_charset($link, 'utf8');
		  $query="SELECT idIncidente, estatus, DATEDIFF(NOW(),fechaEnvioValidacion) AS diasValidacion FROM rfo WHERE responsableValidacion='aasuppendi@bestel.com.mx' and estatus='En Revision'";
		  
		  if($sentencia=mysqli_prepare($link, $query)){
		      
		      mysqli_stmt_execute($sentencia);
		      mysqli_stmt_bind_result($sentencia, $inc, $estatus, $diasValidacion);
		      
		      while (mysqli_stmt_fetch($sentencia)){
		          echo "<p><a href='../detalleRfo.php/?inc=$inc&supervisor=$supervisor'>$inc</a> $estatus $diasValidacion dias</p>";
		      }
		      mysqli_stmt_close($sentencia);
		  }
		  mysqli_close($link);
		  
		?>
	</body>
</html>
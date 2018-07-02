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
		  
		  $link=mysqli_connect('localhost', 'administrador_local', 'AdminMySql', 'nmc');
		  $query="SELECT idIncidente FROM incidentes WHERE usuario='$supervisor', tipoInforme='Reactivo'";
		  
		  if($sentencia=mysqli_prepare($link, $query)){
		      
		      mysqli_stmt_execute($sentencia);
		      mysqli_stmt_bind_result($sentencia, $inc);
		      
		      while (mysqli_stmt_fetch($sentencia)){
		          echo "<p><a href='../detalleRfo.php/?inc=$inc&supervisor=$supervisor'>$inc</a></p>";
		      }
		      mysqli_stmt_close($sentencia);
		  }
		  mysqli_close($link);
		  
		?>
	</body>
</html>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<link rel="stylesheet" type="text/css" href="../css/consultaRfo.css" />
		<title>Gestión de RFOs</title>
	</head>
	
	<body>
		<div id="principal">
			
			<header class="encabezadoPrincipal">
				<h1>Sistema de Gestión de RFOs</h1>
			</header>
			
			<div id="acceso">
				<h2>Modulo de consulta</h2>
				<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
					
					<input id="usuario" type="text" name="usuario" size="20" placeholder="Usuario" />
					
					<input id="contrasena" type="password" name="contrasena" size="15" placeholder="Contraseña" />
					
					<input id="enviar" type="submit" value="Enviar" name="btnEnviar" />
				</form>
				
				<?php
				
		         if(isset($_POST['usuario'])){
			
    		          $usuario=$_POST['usuario'];
    			      $contrasena=$_POST['contrasena'];
		         
    			 
    			 //Conexi�n mysqli
    			 $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
    			 mysqli_set_charset($link, 'utf8');
    			 
    			if (mysqli_connect_errno()){
    			     printf("Falló la conexión: %s\n", mysqli_connect_error());
    			     exit();
    			 }
    			 
    			 $query="SELECT `usuario`, `contrasena` FROM usuarios WHERE usuario='$usuario'";
    			 
    			 if($sentencia=mysqli_prepare($link, $query)){
    			     mysqli_stmt_execute($sentencia);
    			     mysqli_stmt_bind_result($sentencia, $usLogin, $pass);
    			     mysqli_stmt_fetch($sentencia);
    			     if($usLogin!=""){
    			         if($contrasena==$pass){
    			             header("Location: incAsignado.php/?usuario=$usLogin");
    			         }else{
    			             echo "<p>La contraseña es incorrecta</p>";
    			         }
    			     }else{
    			         echo "<p>Usuario no encontrado</p>";
    			     }
    			     mysqli_stmt_close($sentencia);
    			 }else{
    			     echo "<p>error</p>";
    			 }
    			 
    			 mysqli_close($link);
		          }
    			
             ?>
			</div>

		</div>
    </body>
</html>
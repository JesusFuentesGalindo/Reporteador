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
			
			<header>
			</header>
			
			<div id="acceso">
				<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
					<label>Usuario:
						<input type="text" name="usuario" />
					</label>
					<label>Contraseña:
						<input type="password" name="contrasena" />
					</label>
					<input type="submit" value="Enviar" name="btnEnviar" />
				</form>
				
				<?php
				
		          if(isset($_POST['usuario'])){
			
    		     $usuario=$_POST['usuario'];
    			 $contrasena=$_POST['contrasena'];
    			 
    			 $link=mysqli_connect('localhost', 'administradorlocal', 'AdminJesus3010', 'nmc');
    			 mysqli_set_charset($link, 'utf8');
    			 
    			 if (mysqli_connect_errno()) {
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
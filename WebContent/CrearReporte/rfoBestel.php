<!DOCTYPE html>
<html lang="es-MX">
	<head>
		<meta charset="UTF-8" />
		<meta name="author" content="Jose de Jesus Fuentes Galindo" />
		<title>RFO Bestel</title>
		
		<style type="text/css">
		      
		      
		      #capaEncabezado{
		          
		          opacity: 0.5;
		      }
		      table tr td, th{
		          
		          width: 369px;
		          
		          font-family: 'Arial';
		          padding: 0;

		      }
		      
		      .negrita{
		          font-size: 20px;
		          font-weight: bold;
		      }
		      
		      .derecha{
		          
		          text-align: right;
		      }
		     .centrado{
		          text-align: center;
		     }
		     
		     #capaDatos{
		          margin-top: 20px;
		          text-align: center;
		     }
		     #datos{
		          
		          position: relative;
		              left: 37px;
		          border: 1px solid;
		          margin: 0 auto;
		     }
		     
		     #datos th{
		          border: 1px solid gray;
		          background-color: #8ec03f;
		     }
		     
		     #datos td{
		          border: .5px solid;
		     }
		     
		     .tdDatos{
		          width: 300px;
		     }

		</style>
	</head>
	
	<body>
		
		<div id="capaEncabezado">
    		<table id="encabezado">
    			<tr>
    				<td rowspan="4"><img alt="Logo Bestel" src="img/logo.png"></td>
    				<td class="derecha negrita">NOC</td>
    			</tr>
    			<tr class="derecha negrita"><td>Network Operation Center</td></tr>
    			<tr class="derecha"><td>NOC-<?php echo date('dmY');?></td></tr>
    			<tr class="derecha"><td>Pág 1 de 1</td></tr>
    			<tr class="negrita centrado"><td colspan="2">Reporte de Falla</td></tr>
    			<tr class="centrado"><td colspan="2"><img alt="separador" src="img/linea.png" /></td></tr>
    		</table>
		</div>
		
		<div id="capaDatos">
			<table id="datos" class="centrado">
				<tr><th class="tdDatos">RUBRO</th><th>DETALLE</th></tr>
				<tr><td class="tdDatos">Cliente:</td><td></td></tr>
				<tr><td class="tdDatos">ID de Servicio:</td><td></td></tr>
				<tr><td class="tdDatos">Número de Reporte:</td><td></td></tr>
				<tr><td class="tdDatos">Falla Reportada:</td><td></td></tr>
				<tr><td class="tdDatos">Fecha y Hora de Inicio:</td><td></td></tr>
				<tr><td class="tdDatos">Fecha y Hora de Fin:</td><td></td></tr>
				<tr><td class="tdDatos">Tiempo Total de Afectación:</td><td></td></tr>
				<tr><td class="tdDatos">Causa de la Falla:</td><td></td></tr>
				<tr><td class="tdDatos">Actividades para Restablecimiento:</td><td></td></tr>
			</table>
		</div>

		<?php
		  
		
    
        ?>
	</body>
</html>

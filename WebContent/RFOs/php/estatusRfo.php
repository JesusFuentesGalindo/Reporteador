<!DOCTYPE html>
<html lang="es-MX">
	<head>
		<meta charset="utf-8" />
		
		<link rel="stylesheet" type="text/css" href="/WebContent/RFOs/css/consultaRfo.css" />
		
		<title>Gestión de RFOs</title>
	</head>
	<body>
		<div id="principal">
		
		<div id="grpoMenu">
			<nav>
				<ul>
					<li><a href="/WebContent/RFOs/php/accesoCreacion.php?usuario=">Regresar</a></li>
				</ul>
			</nav>
		</div>
		
			<header>
				<h1>Sistema de Gestión de RFOs</h1>
			</header>
            <?php 
                
                $usuario=$_GET['usuario'];
                $link=mysqli_connect('localhost', 'administrador', 'Nmc_Admin_01', 'nmc');
                mysqli_set_charset($link, 'utf8');
                
                $query="SELECT DISTINCT
                	rfo.idIncidente,
                    incidentes.incPadre,
                    clientes.nombreCliente,
                    rfo.estatus,
                    B.participacion,
                    A.fecha,
                    DATEDIFF(NOW(), C.fecha) AS 'Dias en Proceso',
                    incidentes.areaResolutora,
                    usuarios.nombre,
                    B.observaciones
                FROM 
                	rfo, 
                    (SELECT DISTINCT idRfo, MAX(fecha) AS fecha FROM participacionrfo GROUP BY idRfo)  AS A,
                    (SELECT DISTINCT idRfo, MIN(fecha) AS fecha FROM participacionrfo GROUP BY idRfo) AS C,
                    participacionrfo AS B,
                    incidentes,
                    clientes,
                    servicios,
                    incidenteservicio,
                    usuarios
                WHERE 
					incidentes.idIncidente=incidenteservicio.idIncidente
                    AND incidenteservicio.circuito=servicios.circuito
                    AND servicios.idCliente=clientes.idCliente
                	AND rfo.idRfo=A.idRfo
                	AND rfo.idRfo=B.idRfo
                    AND rfo.idRfo=C.idRFO
                    AND A.fecha=B.fecha
                	AND rfo.idIncidente=incidentes.idIncidente
                	AND rfo.responsableValidacion=usuarios.usuario
                	AND rfo.estatus !='Enviado'
                ORDER BY estatus, DATEDIFF(NOW(), C.fecha) DESC;";
                
                if($sentencia=mysqli_prepare($link, $query)){
                    
                    mysqli_stmt_execute($sentencia);
                    mysqli_stmt_bind_result($sentencia, $idIncidente, $incPadre, $cliente, $estatus, $participacion, $fecha, $diasProceso, $areaResolutora, $nombre, $comentarios);
                    
                    echo "<p>Pendiente = El RFO no se a generado</p>";
                    echo "<p>En Revisión = El RFO ya se genero y esta a la espera de Visto Bueno</p>";
                    echo "<table id='incidentes' border='1'>";
                    echo    "<caption>Estatus RFO </caption>";
                    echo    "<thead id='encabezado'>";
                    echo        "<tr>";
                    echo            "<th>Incidente</th><th>INC Padre</th><th>Cliente</th><th>Estatus</th><th>Acción</th><th>fecha de Acción</th>
                                    <th>Dias en Proceso</th><th>Area Resolutora</th><th>Supervisor</th><th>Comentarios</th>";
                    echo        "</tr>";
                    echo    "</thead>";
                    
                    echo    "<tbody>";
                    
                    $numIncs=0;
                    $pendiente=0;
                    $revision=0;
                    while(mysqli_stmt_fetch($sentencia)){
                        
                        ++$numIncs;
                        if($estatus=='En Revision') ++$revision;
                        if($estatus=='Pendiente') ++$pendiente;
                        echo "<tr>";
                        echo      "<td><a href='/WebContent/RFOs/Form/editarRfo.php?inc=$idIncidente&mod=0&usuario=$usuario'>$idIncidente</a></td>";
                        echo      "<td>$incPadre</td>";
                        echo      "<td>$cliente</td>";
                        echo      "<td>$estatus</td>";
                        echo      "<td>$participacion</td>";
                        echo      "<td>$fecha</td>";
                        echo      "<td>$diasProceso</td>";
                        echo      "<td>$areaResolutora</td>";
                        echo      "<td>$nombre</td>";
                        echo      "<td>$comentarios</td>";
                        echo "</tr>";
                    }
                    
                    echo    "</tbody>";
                    echo    "<tfoot id='pie'>";
                    echo        "<tr>";
                    echo            "<th>Total de incidentes: $numIncs</th>";
                    echo            "<th></th>";
                    echo            "<th></th>";
                    echo            "<th>Pendientes: $pendiente <br /> En Revisión: $revision</th>";
                    echo        "</tr>";
                    echo    "</tfoot>";
                    
                    echo "</table>";
                    mysqli_stmt_close($sentencia);
                }
                echo mysqli_error($link);
                mysqli_close($link);
                
                
            ?>
        </div>
    </body>
</html>
<?php require_once('class/class.php');?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Prueba de conexión</title>
</head>
<body>
	<h2>Listado de Comentarios en el libro de visitas</h2>
	<?php 
	$tra = new Trabajo();
	$visitas = $tra->get_visitas();

	for ($i=0; $i < sizeof($visitas); $i++)
	{ 
		printf('%s || %s', $visitas[$i]['nombre_persona'], $visitas[$i]['texto']);
		echo "<br>";
	}
	?>
</body>
</html>
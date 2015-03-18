<?php require_once('class/class.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Trabajo con clases video 1</title>
</head>
<body>
	<?php 
		$instanciaDePersona->iniciar('Miguel');
		echo $instanciaDePersona->listar_nombres();
	?>
</body>
</html>
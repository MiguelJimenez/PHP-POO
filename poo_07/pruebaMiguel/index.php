<?php require_once('class/class.php'); ?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Prueba de Miguel</title>
</head>
<body>
	<table>
		<tr>
			<th>id</th>
			<th>Nombre</th>
			<th>Texto</th>
			<th>Fecha</th>
			<th>Hora</th>
		</tr>
		<?php 
		$lista = new Listado();
		$miLista = $lista->devolverListado();

		foreach($miLista as $pruebaMiguel):
		?>
	<tr>
		<td><?php echo $pruebaMiguel['id'];?></td>
		<td><?php echo $pruebaMiguel['nombre_persona'];?></td>
		<td><?php echo $pruebaMiguel['texto'];?></td>
		<td><?php echo $pruebaMiguel['fecha'];?></td>
		<td><?php echo $pruebaMiguel['hora'];?></td>
	</tr>
<?php endforeach; ?>
	</table>
</body>
</html>
<?php require_once('class/class.php');?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Insertar registros con PHP POO</title>
</head>
<body onload='limpiar();'>
	<form action="insertar.php" name="form" method='post'>
		<h2>Ingrese su comentario</h2>
		<table>
			<tr>
				<td>Su nombre:</td>
				<td><input type="text" name="nom"></td>
			</tr>
			<tr>
				<td>Su mensaje:</td>
				<td><textarea name="texto" id="" cols="35" rows="5"></textarea></td>
			</tr>
			<tr>
				<td><hr><input type="button" value="Escribir" onclick="validar();"></td>
			</tr>
		</table>

	</form>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Texto</th>
			<th>Fecha</th>
			<th>Hora</th>
		</tr>
		<?php 
		$tra = new Trabajo();
		$miArray = $tra->get_visitas();
		?>
		<?php foreach($miArray as $registro): ?>
		<tr>
			<td><?php echo $registro['nombre_persona'] ?></td>
			<td><?php echo $registro['texto']; ?></td>
			<td><?php echo $registro['fecha']; ?></td>
			<td><?php echo $registro['hora']; ?></td>
		</tr>


	<?php endforeach; ?>
	</table>

	<script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>



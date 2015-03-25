<?php
require_once('class/class.php');

$tra = new Trabajo();

if(isset($_POST['grabar']) && $_POST['grabar'] == 'si')
{
	// print_r($_POST);
	
	$tra->edit_visitas($_POST['nom'], $_POST['texto'], $_POST['id']);

	exit;
}



$reg = $tra->get_visitas_por_id($_GET['id']);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Editar Registros</title>
</head>
<body onload = "limpiar()">
	<form action="editar.php" name="form" method='post'>
		<h2>Editar comentario</h2>
		<table>
			<tr>
				<td>Su nombre:</td>
				<td><input type="text" name="nom" value='<?php echo $reg[0]['nombre_persona']; ?>'></td>
			</tr>
			<tr>
				<td>Su mensaje:</td>
				<td><textarea name="texto" id="" cols="35" rows="5"><?php echo $reg[0]['texto']; ?></textarea></td>
				<!-- Para enviar el id -->
				<input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">

				<input type="hidden" name="grabar" value="si">

			</tr>
			<tr>
				<td><hr>
					<input type="button" value="Volver" onclick="window.location='index.php'">
					<input type="button" value="Editar" onclick="validar();"></td>
			</tr>
		</table>
	
	</form>

	<script type="text/javascript" src="js/funciones.js"></script>
</body>
</html>
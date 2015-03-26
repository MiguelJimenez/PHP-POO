<?php
require_once('class/class.php');

$tra = new Trabajo();

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>..: Blog de Miguel :..</title>
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<center>
		<div id="principal">
			<div id="header">
				Header
			</div>

			<div id="main">
				<div id="menu">
					<?php include('menu.php'); ?>
					<div id="buscador">
						<form action="" name="buscar">
							<input type="text" name="buscar">
							<a class='lupa' href=""><img src="img/buscador.png" alt="Buscar"></a>
						</form>
					</div>
				</div>

				<div id="content">
					<div id="contenedor">
						<?php for($i=0; $i<10; $i++): ?>
						<div id="separador_post"></div>
						<div id="post">
							<div id="titulo_post">
								<div id="titulo">Mi título</div>
								<div id="fecha">Fecha</div>
							</div>
							<div id="texto_post">
								<hr>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam error facilis est dolores inventore. Quam sunt perspiciatis minima, dolor, incidunt consequatur cum beatae repudiandae eligendi dolores omnis et obcaecati animi!....
							</div>
							<div id="separador_texto_debajo"></div>
							<div id="debajo_post">
								<div id="leer_mas">
									<a href="">Leer Más</a>
								</div>
								<div id="comentarios">Tiene 10 comentarios</div>
							</div>
						</div>
						<div id="div_entre_post"></div>

					<?php endfor; ?>
					<div id="div_paginacion_post">
						<hr>
						Anteriores Publicaciones
						||
						Siguientes Publicaciones
					</div>
				</div>
				<div id="sidebar">
					<div id="separador_widget"></div>
					<div id="widget">
													
							
							<div id="caja_widget">
								<div id="titulo_widget">Categorías</div>
								<?php
								$categoria = $tra->get_categorias();	
								for ($i=0; $i < sizeof($categoria); $i++): ?>
								<div id="contenido_widget">
									<a href="?cat=<?php echo $categoria[$i]['id_categoria']; ?>" title="<?php echo $categoria[$i]['categoria']; ?>"><?php echo $categoria[$i]['categoria']; ?></a>
								</div>
							<?php endfor; ?>
							</div>
						<div class="separador_lateral_widget"></div>
					</div>

					<div id="separador_widget"></div>
					<div id="widget">
						<div class="separador_lateral_widget"></div>
							
							
							<div id="caja_widget">
								<div id="titulo_widget">Últimos videotutoriales</div>
								<?php for ($i=0; $i < 10; $i++): ?>
								<div id="contenido_widget">PHP</div>
							<?php endfor; ?>
							</div>
						<div class="separador_lateral_widget"></div>
					</div>
				</div>

				<div id="footer">
					<hr>
					&copy; Desarrollado por MiJim 2015
				</div>
				
			</div>
		</div>

	</div>
</center>	

</body>
</html>
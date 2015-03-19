<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Colaboración entre clases</title>
</head>
<body>
	<?php 
	class Cabecero
	{
		private $texto;

		public function __construct($titulo)
		{
			$this->texto = $titulo;
		}

		public function graficar()
		{
			printf('<h1>%s</h1>', $this->texto);
		}
	}

	class Cuerpo
	{
		private $lineas = array();

		public function iniciar_linea($li)
		{
			$this->lineas[]=$li;
		}

		public function graficar()
		{
			for($i=0; $i<sizeof($this->lineas); $i++)
			{
				?>
				<p><?php echo $this->lineas[$i]; ?></p>
				<?php 
			}
		}
	}

	class Footer
	{
		private $texto;

		public function __construct($cadena)
		{
			$this->texto = $cadena;
		}

		public function graficar()
		{
			printf('<hr>%s', $this->texto);
		}
	}

	// Creamos una clase para implementar la colaboración de clases u objetos
	class Pagina
	{
		private $cabecera;
		private $body;
		private $pie;

		public function __construct($texto_cabecero, $texto_pie)
		{
			$this->cabecera = new Cabecero($texto_cabecero);
			$this->body = new Cuerpo();
			$this->pie = new Footer($texto_pie);
		}

		public function iniciar_cuerpo($texto)
		{
			$this->body->iniciar_linea($texto);
		}

		public function vista()
		{
			$this->cabecera->graficar();
			$this->body->graficar();
			$this->pie->graficar();
		}
	}

	// Ahora creamos las vistas de nuestro proyecto
	$pag = new Pagina('Ejemplo de colaboración de clases', 'Desarrollado por mi');
	$pag->iniciar_cuerpo('Mi primer párrafo');
	$pag->iniciar_cuerpo('Mi primer párrafo');
	$pag->iniciar_cuerpo('Mi primer párrafo');
	$pag->iniciar_cuerpo('Mi primer párrafo');
	$pag->iniciar_cuerpo('Mi primer párrafo');
	$pag->vista();
	
	?>	
</body>
</html>
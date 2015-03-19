<?php 
class Pagina
{
	private $titulo;
	private $posicion;

	public function iniciar($tit, $pos)
	{
		$this->titulo = $tit;
		$this->posicion = $pos;
	}

	public function imprimir()
	{
		echo "<div align='".$this->posicion."'>".$this->titulo."</di>";
	}
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Vídeo 2</title>
</head>
<body>
	<?php 
		$pag = new Pagina();
		$pag->iniciar('Título de prueba', 'center');
		// print_r($pag);
		$pag->imprimir();

	?>	
</body>
</html>
<?php 
class Pagina
{
	private $titulo;
	private $posicion;

	// Para inicializar atributos
	public function __construct($tit, $pos)
	{
		$this->titulo = $tit;
		$this->posicion = $pos;
	}

	public function imprimir()
	{
		// echo "<div align='".$this->posicion."'>".$this->titulo."</di>";
		printf("<div align='%s'>%s</di>",$this->posicion, $this->titulo);
	}
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Vídeo 2 - Método constructor</title>
</head>
<body>
	<?php 
		$pag = new Pagina('Prueba de título constructores', 'right');
		$pag->imprimir();
	?>
</body>
</html>
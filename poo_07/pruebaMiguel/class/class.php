<?php 
class Conexion
{
	public static function conectar()
	{
		$conexion = mysqli_connect('localhost', 'root', '', 'trabajo_de_curso');
		$conexion->query("SET NAMES 'utf8'");
		return $conexion;
	}
}

class Listado
{
	private $miArray;

	public function __construct()
	{
		$this->miArray = array();
	}

	public function devolverListado()
	{
		$consulta = "SELECT * FROM libro_de_visitas";
		$resultado = Conexion::conectar()->query($consulta);

		while($fila = $resultado->fetch_assoc())
		{
			$this->miArray[] = $fila;
		}

		return $this->miArray;
	}
}
?>
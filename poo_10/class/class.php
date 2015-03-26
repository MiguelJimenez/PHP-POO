<?php 
session_start();

class Conectar
{
	public static function con()
	{
		$conexion = mysqli_connect('localhost', 'root', '', 'blog');
		$conexion->query("SET NAMES 'utf8'");
		return $conexion;
	}
}

class Trabajo
{
	private $cat = array();

	public function get_categorias()
	{
		$consulta = "SELECT * FROM categorias ORDER BY categoria ASC";
		$resultado = Conectar::con()->query($consulta);
		while ($fila = $resultado->fetch_assoc())
		{
			$this->cat[] = $fila;
		}
		return $this->cat;
	}
}


?>
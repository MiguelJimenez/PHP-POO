<?php 
class Cadena
{
	public static function fecha()
	{
		echo date('d-m-Y');
	}

	public static function corta($palabra, $num)
	{
		$largo = strlen($palabra);
		$cadena = substr($palabra, 0, $num);
		return $cadena;

	}
}

Cadena::fecha();

echo "<hr>";

$texto = 'En un lugar de La Mancha de cuyo nombre no quiero acordarme...';
echo (Cadena::corta($texto, 10));
?>
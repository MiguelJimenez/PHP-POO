<?php 
// La clase abstracta no puede ser instanciada. Sólo desde sus subclases

abstract class Trabajador
{
	protected $nombre;
	protected $sueldo;

	public function __construct($nom, $su)
	{
		$this->nombre = $nom;
		$this->sueldo = $su;
	}

	public function retornar_sueldo()
	{
		return $this->sueldo;
	}
}

class Empleado extends Trabajador
{

}

class Gerente extends Trabajador
{

}

$emp1 = new Empleado('Juan Perez', '850');
printf($emp1->retornar_sueldo());
echo "<hr>";

$emp2 = new Gerente('Pedro Picapiedra', '125.000');
printf($emp2->retornar_sueldo());
echo "<hr>";

if ($emp1 instanceof Empleado)
{
	echo 'el objeto pertenece a la clase Empleado';
}
else
{
	echo "Pertenece a otra clase";
}

/*$trabajador1 = new Trabajador('Miguel', '1500');
printf($trabajador1->retornar_sueldo());*/



?>
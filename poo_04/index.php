<?php 
// Es la clase padre
class Valores 
{
	protected $valor1; // protected -> Pueden estar disponibles desde otras clases hijas (por la herencia)
	protected $valor2;
	protected $resultado;

	public function cargar1($v1)
	{
		$this->valor1 = $v1;
	}

	public function cargar2($v2)
	{
		$this->valor2 = $v2;
	}

	public function imprimir()
	{
		return $this->resultado;
	}
}

// La clase Sumar es hija de la clase Valores
class Sumar extends Valores 
{
	public function operar()
	{
		$this->resultado = $this->valor1 + $this->valor2;
		return $this->resultado;
	}
}

class Resta extends Valores
{
	public function operar()
	{
		$this->resultado = $this->valor1 - $this->valor2;
		return $this->resultado;
	}
}

class Multiplicacion extends Valores
{
	public function operar()
	{
		$this->resultado = $this->valor1*$this->valor2;
	}
}

$suma = new Sumar();
$suma->cargar1(25);
$suma->cargar2(34);
$suma->operar();
printf("El valor de la suma es %d", $suma->imprimir());

$resta = new Resta();
$resta->cargar1(15);
$resta->cargar2(5);
$resta->operar();
printf("<hr>El valor de la resta es %d", $resta->imprimir());

$multiplicacion = new Multiplicacion();
$multiplicacion->cargar1(15);
$multiplicacion->cargar2(5);
$multiplicacion->operar();
printf("<hr>El valor de la multiplicación es %d", $multiplicacion->imprimir());
?>
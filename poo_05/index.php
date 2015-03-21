<?php 
class Operacion
{
	protected $valor1;
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

class Suma extends Operacion
{
	public function operar()
	{
		$this->resultado = $this->valor1 + $this->valor2;
	}

	public function imprimir()
	{
		printf('La suma de %d + %d = ', $this->valor1, $this->valor2);
		printf(parent::imprimir());
	}
}

/* MOSTRAMOS RESULTADOS */
$suma = new Suma();
$suma->cargar1('2');
$suma->cargar2('3');
$suma->operar();
$suma->imprimir();
?>
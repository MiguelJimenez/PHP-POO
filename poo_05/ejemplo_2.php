<?php 
class Operacion
{
	protected $valor1;
	protected $valor2;
	protected $resultado;

	public function __construct($v1, $v2) // version 1
	{
		$this->valor1 = $v1;
		$this->valor2 = $v2;
	}

	public function imprimir()
	{
		return $this->resultado;
	}
}

class Suma extends Operacion
{
	protected $titulo;

	public function __construct($v1, $v2, $tit) // version 2
	{
		parent::__construct($v1, $v2);
		$this->titulo = $tit;
	}

	public function operar()
	{
		$this->resultado = $this->valor1 + $this->valor2;
	}

	public function imprimir()
	{
		printf($this->titulo);
		printf('<br>La suma de %s + %s = ', $this->valor1, $this->valor2);
		printf(parent::imprimir());
	}
}

$suma = new Suma(10, 5, 'Ejemplo de sobreescritura de m&eacute;todos');
$suma->operar();
$suma->imprimir();
?>
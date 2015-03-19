<?php
// Creamos nuestra primera clase

class Persona
{
	// Creamos los atributos
	private $nombre=array();
	// protected $color_de_pelo;
	// public $tamano;

	// Creamos los métodos
	public function iniciar($parametro)
	{
		$this->nombre = $parametro;
	}

	public function listar_nombres()
	{
		// return count($this->nombre);
		return $this->nombre;
	}
}

// Creamos una instancia de la clase persona
$instanciaDePersona = new Persona();

?>
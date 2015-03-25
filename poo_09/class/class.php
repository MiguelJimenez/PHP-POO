<?php 
class Conectar
{
	public static function con()
	{
		$conexion = mysqli_connect('localhost', 'root', '', 'trabajo_de_curso');
		$conexion->query("SET NAMES 'utf8'");
		return $conexion;
	}
}

class Trabajo
{
	// private $visitas=array();
	private $visitas;

	public function __construct()
	{
		$this->visitas = array();
	}

	public function get_visitas()
	{
		$sql='SELECT * FROM libro_de_visitas ORDER BY id DESC';
		$resultado = Conectar::con()->query($sql);

		while($fila = $resultado->fetch_assoc())
		{
			$this->visitas[] = $fila;
		}

		return $this->visitas;
	}

	public function add_visitas($nom, $texto)
	{
		$consulta = "INSERT INTO libro_de_visitas VALUES (null, '$nom', '$texto', now(), now())";
		$resultado = Conectar::con()->query($consulta);
		echo "<script type='text/javascript'>
		alert('Gracias por escribir en nuestro libro de visitas');
		window.location = 'index.php';
		</script>";
	}

	public function get_visitas_por_id($id)
	{
		$consulta = "SELECT * FROM libro_de_visitas WHERE id=$id";
		$resultado = Conectar::con()->query($consulta);
		while($fila = $resultado->fetch_assoc())
		{
			$this->visitas[] = $fila;
		}
		return $this->visitas;
	}

	public function edit_visitas($nom, $texto, $id)
	{
		$consulta = "UPDATE libro_de_visitas SET nombre_persona = '$nom', texto = '$texto' WHERE id = $id";
		$resultado = Conectar::con()->query($consulta);
		echo "<script type='text/javascript'>
		alert('El registro ha sido modificado correctamente');
		window.location = 'index.php';
		</script>";
	}

	public function eliminar_visita($id)
	{
		$consulta = "DELETE FROM libro_de_visitas WHERE id=$id";
		$resultado = Conectar::con()->query($consulta);
		echo "<script type='text/javascript'>
		alert('El registro ha sido eliminado correctamente');
		window.location = 'index.php';
		</script>";
	}
}

?>
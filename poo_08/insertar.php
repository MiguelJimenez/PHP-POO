<?php 
require_once('class/class.php');

// print_r($_POST);
$nombre = $_POST['nom'];
$texto = $_POST['texto'];

$tra = new Trabajo();
$tra->add_visitas($nombre, $texto);





?>
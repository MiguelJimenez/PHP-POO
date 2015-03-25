<?php 
require_once('class/class.php');

// print_r($_GET);

$tra = new Trabajo();
$tra->eliminar_visita($_GET['id']);



?>

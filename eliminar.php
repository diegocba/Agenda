<?php
//recuperar datos de la tabla de listar.php
$id_persona=$_GET["id"];

	include 'connect.php';

	$sql = "DELETE FROM julianma_agenda.personas WHERE personas.personas_id = $id_persona";

	$bdmotor->query($sql);

	if($bdmotor->connect_errno)
	{
		die("Error de SQL: ".$bdmotor->connect_errno);
	}

	else 
	{
		echo "Consulta realizada con exito.";
		echo "<a href=\"index.html?\"> Volver al menu </a>";
	}
?>
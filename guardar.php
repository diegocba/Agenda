<?php
	include 'connect.php';
	
	if($_POST)
	{
		//parametros del formulario
		$apellido=$_POST["Apellido"];
		$nombre=$_POST["Nombre"];
		$email=$_POST["Email"];
		$telefono=$_POST["Telefono"];
		$pais=$_POST["Pais"];
		//$direccion=$_POST["Direccion"];

		foreach($_POST as $key=>$value)
		{
			echo $key.": ".$value."</br>";
		}
		
		// $my_POST = array_values($_POST);
		// for($i=0; $i<count($_POST); $i++)
		// {
		// 	echo $my_POST[$i]."</br>";
		// }
	}






?>
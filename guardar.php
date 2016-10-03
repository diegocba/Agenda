<?php
	include 'connect.php';
	
	if($_POST)
	{
		//parametros del formulario
		$apellido=$_POST["Apellido"];
		$nombre=$_POST["Nombre"];
		$email=$_POST["Email"];
		$telefono=$_POST["Telefono"];
		$pais_id=$_POST["Pais"];
		$observaciones=$_POST["Observaciones"];
		$direcciones=$_POST["Direcciones"];
		$ubicacion=$_POST["Ubicacion"];

		//$direccion=$_POST["Direccion"];

		// foreach($_POST as $key=>$value)
		// {
		// 	echo $key.": ".$value."</br>";
		// }
		
		// $my_POST = array_values($_POST);
		// for($i=0; $i<count($_POST); $i++)
		// {
		// 	echo $my_POST[$i]."</br>";
		// }

		$sql= "INSERT INTO `julianma_agenda`.`personas`
		(
				`personas_id`, 
				`personas_nombre`, 
				`personas_apellido`, 
				`personas_email`, 
				`personas_telefono`, 
				`personas_observaciones`, 
				`personas_direcciones`, 
				`personas_ubicacion`, 
				`personas_paises_id`
		) 

		VALUES 
		(
				NULL, 
				'$apellido', 
				'$nombre', 
				'$email', 
				'$telefono',
				'$observaciones', 
				'$direcciones', 
				'$ubicacion', 
				 $pais_id
		)";

		$rs = $bdmotor->query($sql);

		//echo "SQL:".$sql;

		if(!$rs)
		{
			die("Error de SQL: ".$bdmotor->connect_errno);
		}

		else
		{
			echo "Su consulta ha sido realizada con exito.";

		}	

		echo "<a href=\"index.html?\"> Volver al menu </a>";

		//$rs->close();
	}

	$bdmotor->close();
?>
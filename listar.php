<!DOCTYPE html>
<html>
<head>
	<title>Listado</title>
	<link href="style_listado.css" rel="stylesheet" type="text/css">
</head>
<body>
<?php
	include 'connect.php';

	$sql = "SELECT paises. paises_nombre, personas.*
			FROM paises, personas 
			WHERE (paises.paises_id=personas.personas_paises_id)";

	$rs=$bdmotor->query($sql);
	echo "<table>";
	while ($row = $rs->fetch_array(MYSQLI_ASSOC))
 	{
 		echo 
 		"<tr> 
 			<td>".$row["personas_id"]."</td>
 		 	<td>".$row["personas_paises_id"]."</td>
 		 	<td>".$row["personas_apellido"]."</td>
 		 	<td>".$row["personas_nombre"]."</td>
 		 	<td>".$row["personas_email"]."</td>
 		 	<td>".$row["personas_telefono"]."</td>
 		 	<td>".$row["paises_nombre"]."</td>
 		 	<td> <a href=\"editar.php?id=".$row["personas_id"]."\"> Editar </a> </td>
 		 <tr>";

 		// echo "
 		// <ul> 
 		// 	<li>".$row["personas_paises_id"]."</li>
 		// 	<li>".$row["personas_apellido"]."</li>
 		// 	<li>".$row["personas_nombre"]."</li>
 		// 	<li>".$row["paises_nombre"]."</li>
 		// </ul>";
 	}

 	echo "</table>";
 ?>




</body>
</html>
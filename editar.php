<?php
//recuperar datos de la tabla de listar.php
$id_persona=$_GET["id"];

include 'connect.php';

	$sql = "SELECT *
			FROM personas 
			WHERE (personas_id=$id_persona)";

	$rs=$bdmotor->query($sql);
	
	if($bdmotor->connect_errno)
	{
		die("Error de SQL: ".$bdmotor->connect_errno);
	}

$row = $rs->fetch_array(MYSQLI_ASSOC);

$sql = "SELECT * FROM PAISES WHERE paises_id = $row[personas_paises_id]";

$rs1 = $bdmotor->query($sql);

$row1 = $rs1->fetch_array(MYSQLI_ASSOC);

echo "

<h2>Persona</h2>
<section>
	<form action=\"actualizar.php\" method=\"POST\">
		<input value=".$row["personas_apellido"]." required=\"true\" type=\"text\" name=\"Apellido\" placeholder=\"Apellido\">
		<input value=".$row["personas_nombre"]." required=\"true\" type=\"text\" name=\"Nombre\" placeholder=\"Nombre\">
		<input value=".$row["personas_email"]." type=\"email\" name=\"Email\" placeholder=\"E-mail\">
		<input value=".$row["personas_telefono"]." type=\"number\" name=\"Telefono\" placeholder=\"Telefono\">

		<select name=\"Pais\">
			<option value=".$row["personas_paises_id"]."> ".$row1["paises_nombre"]."</option>";

					$sql = 'SELECT * FROM PAISES';
					$rs = $bdmotor->query($sql);

					while ($row=$rs->fetch_row())
					{
						echo "<option value=\"$row[0]\"> $row[1]</option>";
					}

		echo "</select>	

		<input type=\"submit\" value=\"Guardar\">

	</form>".

	"<a href=\"index.html?\"> Volver al menu </a>";
?>
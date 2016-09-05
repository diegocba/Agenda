<h2>Persona</h2>
<section>
	<form action="guardar.php" method="POST">
		<input required="true" type="text" name="Apellido" placeholder="Apellido">
		<input required="true" type="text" name="Nombre" placeholder="Nombre">
		<input type="email" name="Email" placeholder="E-mail">
		<input type="number" name="Telefono" placeholder="Telefono">
		<select name="Pais">
			<option value="-1"> Elija un pais</option>

				<?php 		
					include 'connect.php';

					$sql = 'SELECT * FROM PAISES';
					$rs = $bdmotor->query($sql);

					while ($row=$rs->fetch_row())
					{
						//printf("%s,%s,\n",$row[0],$row[1]);
						//print_r($row);

						echo "<option value=\"$row[0]\"> $row[1]</option>";
					}
				?>

		</select>	
		<!-- <input type="text" name="Direccion" placeholder="Direccion"> -->
		<input type="submit" value="Guardar">
	</form>

</section>


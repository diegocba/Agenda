<h2>Persona</h2>
<section>
	<form>
		<input required="true" type="text" name="Apellido" placeholder="Apellido">
		<input required="true" type="text" name="Nombre" placeholder="Nombre">
		<input type="email" name="Email" placeholder="E-mail">
		<input type="number" name="Telefono" placeholder="Telefono">
		<select> Paises 
		<?php 		
		define connect.php

			$tabla = "paises";
			$sql = "SELECT * FROM PAISES";
			$rs=$bdmotor ->query($sql);

				//faltan procesos antes de esto
			for($i=1;$rs[$i];$i++)
			{
				echo"<option>.REG[$i].</option>";
			}







		?>

		</select>	
		<input type="text" name="Direccion" placeholder="Direccion">
		<input type="submit" value="Guardar">
	</form>

</section>


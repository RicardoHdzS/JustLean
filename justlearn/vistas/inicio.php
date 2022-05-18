<?php 
	session_start();

	if (isset($_SESSION['usuario'])) {
		include "header.php";
?>

		<div class="jumbotron jumbotron-fluid">
		  <div class="container">
		    <h1 class="display-4"><b>CURSOS DISPONIBLES<b></h1>


		   	<div class="row">
		   		<div class="col-sm-12">
		   			<div id="tablaCategorias"></div>
		   		</div>
		   	</div>
		  </div>
		</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="text-align: center;">
				<div class="table-responsive">
					<table class="table table-hover table-dark" id="tablaCategoriasDataTable">
						<thead>
							<tr style="text-align: center;">
								<td>CURSO</td>
								<td>PROFESOR</td>
							</tr>
						</thead>
						<tbody>
							<?php 
								$username = "root"; 
								$password = ""; 
								$database = "just"; 
								$mysqli = new mysqli("localhost", $username, $password, $database); 
								$query = "SELECT nombre,nombreU 
										  FROM t_categorias,t_usuarios 
								  		  WHERE t_categorias.id_usuario=t_usuarios.id_usuario";
								

								if ($result = $mysqli->query($query)) {
    								while ($row = $result->fetch_assoc()) {
        								$field1name = $row["nombre"];
        								$field2name = $row["nombreU"];

        								echo '<tr style="text-align: center;"> 
                  								<td>'.$field1name.'</td> 
                  								<td>'.$field2name.'</td> 
              						  		</tr>';
    								}
    								$result->free();
								} 
							?>
						</tbody>
					</table>			
				</div>

			</div>
		</div>
	</div>

	<?php
	include "footer.php"; 
} else {
	header("location:../index.php");
}
?>
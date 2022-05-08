<?php session_start();

if (isset($_SESSION['usuario'])) {
	include "header.php";
	?>

	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="text-align: center;">
				<div class="jumbotron">
					<h1 class="display-4">Gestor de archivos con php y mysql</h1>
					<p class="lead">Aplicación web encargada de gestionar archivos, por medio de categorias</p>
					<hr class="my-4">
					<p><img src="../img/logo.png" class="img-thumbnail" width="300px" /></p>
					<p class="lead">
						<a class="btn btn-primary btn-lg" href="#" role="button">Ir al curso</a>
					</p>
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
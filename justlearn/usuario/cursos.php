<?php 
	session_start();
	include "header2.php";
?>

		<div class="jumbotron jumbotron-fluid">
		  <div class="container">
		    <h1 class="display-4"><b>CURSOS<b></h1>
		    <hr>
		   	<div class="row">
		   		<div class="col-sm-12">
		   			<div id="tablaCategorias"></div>
		   		</div>
		   	</div>
		  </div>
		</div>


<?php
		include "footer2.php"; 
?>
	<!--Dependencia de categorias, todas las funciones js de categorias-->
	<script src="../js/categorias.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			$('#tablaCategorias').load("tablaCategoria.php");
		});
	</script>
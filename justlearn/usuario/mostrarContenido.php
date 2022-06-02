<?php 
	include "header2.php";
	session_start();
	require_once "../clases/Conexion.php";
	$conexion = new Conectar();
	$conexion = $conexion->conexion();
    $id = $_GET['idCategoria'];
    //echo $id;
    $sql = "SELECT 
				archivos.id_archivo as idArchivo,
				archivos.nombre as nombreArchivo,
			    archivos.tipo as tipoArchivo,
			    archivos.ruta as rutaArchivo,
				usuarios.id_usuario as idUsuario
			FROM
			    t_archivos AS archivos INNER JOIN t_usuarios AS usuarios
				ON archivos.id_usuario = usuarios.id_usuario
			WHERE
			     archivos.id_categoria = '$id'";
	$result = mysqli_query($conexion, $sql);
?>

		<div class="jumbotron jumbotron-fluid">
		  <div class="container">
		    <h1 class="display-4"><b>CURSOS<b></h1>
		    <hr>
		   	<div class="row">
		   		<div class="col-sm-12">
		   			<div>
					   <div class="row">
	<div class="col-sm-12">
		<div class="table-responsive">
			<table class="table table-hover table-dark" id="tablaGestorDataTable">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Extensión archivo</th>
						<th>Descargar</th>
						<th>Visualizar</th>
					</tr>
				</thead>
				<tbody>
                    <?php 

					/*
						Arreglo de extensiones validas
					*/

					$extensionesValidas = array('png', 'jpg', 'pdf', 'mp3', 'mp4');

					while($mostrar = mysqli_fetch_array($result)) { 

						$rutaDescarga = "../archivos/".$mostrar['idUsuario']."/".$mostrar['nombreArchivo'];
						$nombreArchivo = $mostrar['nombreArchivo'];
						$idArchivo = $mostrar['idArchivo'];
				 ?>
					<tr>
						<td><?php echo $mostrar['nombreArchivo']; ?></td>
						<td><?php echo $mostrar['tipoArchivo']; ?></td>
						<td>
							<a href="<?php echo $rutaDescarga; ?>" 
								download="<?php echo $nombreArchivo; ?>" class="btn btn-success btn-sm">
								<span class="fas fa-download"></span>
							</a>
						</td>
						<td>
							<?php 
								for ($i=0; $i < count($extensionesValidas); $i++) { 
									if ($extensionesValidas[$i] == $mostrar['tipoArchivo']) {
							?>
									<span class="btn btn-primary btn-sm" 
										  >
									<span class="fas fa-eye"></span>
							</span>
							<?php
									}
								}
							 ?>
						</td>
					</tr>
				<?php
					} 
				 ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
					</div>
		   		</div>
		   	</div>
		  </div>
		</div>


<?php
		include "footer2.php"; 
?>

<script type="text/javascript">
	$(document).ready(function(){
		$('#tablaGestorDataTable').DataTable();
	});
</script>
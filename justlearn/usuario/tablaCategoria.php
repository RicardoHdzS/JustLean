<?php session_start();
	require_once "../clases/Conexion.php";
	$conexion = new Conectar();
	$conexion = $conexion->conexion();
 ?>
 
<div class="table-responsive">
	<table class="table table-hover table-dark" id="tablaCategoriasDataTableUsuario">
		<thead>
			<tr style="text-align: center;">
				<td>Nombre</td>
				<td>Instructor</td>
				<td>Visitar</td>
			</tr>
		</thead>
		<tbody>

		<?php
			$sql = "SELECT id_categoria,
						   nombre,
						   nombreU						   
					FROM t_categorias INNER JOIN t_usuarios
					ON t_categorias.id_usuario = t_usuarios.id_usuario "; 
			$result = mysqli_query($conexion, $sql);
			
			while($mostrar = mysqli_fetch_array($result)){ 
				$idCategoria = $mostrar['id_categoria'];
		?>
			<tr style="text-align: center;">
				<td><?php echo $mostrar['nombre']; ?></td>
				<td><?php echo $mostrar['nombreU']; ?></td>
				<td>
					<span class="btn btn-warning btn-sm">
						<a href="mostrarContenido.php?idCategoria=<?php echo $idCategoria;?>">
						<span class="fas fa-eye"></span>
						</a>
					</span>
				</td>
			</tr>
		<?php
			} 
		 ?>
		</tbody>
	</table>
</div>
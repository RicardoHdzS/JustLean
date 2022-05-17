<!DOCTYPE html>
<html>
<head>
	<title>Registro</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="librerias/bootstrap4/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="librerias/jquery-ui-1.12.1/jquery-ui.theme.css">
    <link rel="stylesheet" type="text/css" href="librerias/jquery-ui-1.12.1/jquery-ui.css">
</head>
<body>
	<div class="container">
		<h1 style="text-align: center;">Registro de usuario</h1>
		<hr>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<form id="frmRegistro" method="post" onsubmit="return agregarUsuarioNuevo()" 
				autocomplete="off">
					
					<input type="text" id="nombre" class="fadeIn third" name="nombre" placeholder="Nombre" required="">
					<input type="text" id="usuario" class="fadeIn third" name="usuario" placeholder="Nombre de Usuario o Nickname" required="">
					<input type="email" id="correo" class="fadeIn third" name="correo" placeholder="Correo" required="">
					<input type="password" id="password" class="fadeIn third" name="password" placeholder="Contraseña" required="">
				    <input type="submit" class="fadeIn fourth" value="Registrar">

					<br>
					
						<div class="row">
						<div class="justify-center">
							<a href="index.php" class="btn fadeIn fourth ">Login</a>
						</div>
						</div>

						
					</div>
				</form>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
	<script src="librerias/jquery-3.4.1.min.js"></script>
	<script src="librerias/jquery-ui-1.12.1/jquery-ui.js"></script>
	<script src="librerias/sweetalert.min.js"></script>

	<script type="text/javascript">


		


		function agregarUsuarioNuevo() {
			$.ajax({
				method: "POST",
				data: $('#frmRegistro').serialize(),
				url: "procesos/usuario/registro/agregarUsuario.php",
				success:function(respuesta){

					respuesta = respuesta.trim();

					if (respuesta == 1) {
						$("#frmRegistro")[0].reset();
						swal(":D", "Agregado con exito!", "success");
					} else if(respuesta == 2){
						swal("Este usuario ya existe, por favor escribe otro !!!");
					} else {
						swal(":(", "Fallo al agregar!", "Error");
					}
				}
			});

			return false;
		}
	</script>
</body>
</html>
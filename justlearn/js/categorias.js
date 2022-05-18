function agregarCategoria() {
	var categoria = $('#nombreCategoria').val();

	if (categoria == "") {
		swal("Debes agregar una categoria");
		return false;
	} else {
		$.ajax({
			type:"POST",
			data:"categoria=" + categoria,
			url:"../procesos/categorias/agregarCategoria.php",
			success:function(respuesta){
				respuesta = respuesta.trim();
				if (respuesta == 1) {
					$('#tablaCategorias').load("categorias/tablaCategoria.php");
					$('#nombreCategoria').val("");
					swal("Curso Agregado");
				} else {
					swal("Fallo al crear el curso");
				}
			}
		});
	}
}

function eliminarCategorias(idCategoria) {
	idCategoria = parseInt(idCategoria);
	if (idCategoria < 1) {
		swal("No tienes id de curso");
		return false;
	} else {
		//*****************************************
		swal({
		  title: "¿Está seguro de querer eliminar este curso?",
		  text: "",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		   		$.ajax({
		   			type:"POST",
		   			data:"idCategoria=" + idCategoria,
		   			url:"../procesos/categorias/eliminarCategoria.php",
		   			success:function(respuesta){
		   				respuesta = respuesta.trim();
		   				if (respuesta == 1) {
		   					$('#tablaCategorias').load("categorias/tablaCategoria.php");
		   					swal("Curso eliminado", {
		      					icon: "success",
		    				});
		   				} else {
		   					swal("Fallo al eliminar el curso");
		   				}
		   			}
		   		});	
		  } 
		});
		//*****************************************
	}
}

function obtenerDatosCategoria(idCategoria) {
	$.ajax({
		type:"POST",
		data:"idCategoria=" + idCategoria,
		url:"../procesos/categorias/obtenerCategoria.php",
		success:function(respuesta) {
			respuesta = jQuery.parseJSON(respuesta);

			$('#idCategoria').val(respuesta['idCategoria']);
			$('#categoriaU').val(respuesta['nombreCategoria']);
		}
	})
}

function actualizaCategoria() {
	if ($('#categoriaU').val() == "") {
		swal("No hay categoria!!");
		return false;
	} else {
		$.ajax({
			type:"POST",
			data:$('#frmActualizaCategoria').serialize(),
			url:"../procesos/categorias/actualizaCategoria.php",
			success:function(respuesta){
				respuesta = respuesta.trim();

				if (respuesta == 1) {
					$('#btnCerrarUpdateCategoria').click();
					$('#tablaCategorias').load("categorias/tablaCategoria.php");
					swal(":D", "Actualizado con exito!", "success");
					
				} else {
					swal(":(", "Fallo al actualizar!", "error");
				}
			}
		})
	}
}
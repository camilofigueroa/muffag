jQuery(document).ready(function()
{
	/*	mensaje basico con información	*/
	jQuery(".msg-basico-txt").click(function() 
	{	// primero el titulo y luego la info.
		swal({   
			title: "Error usuario o passwor invalido", 	
			text: "Intenta nuevamente",   
			type: "error",   
			confirmButtonColor: "#EE6B55",   
			});
	});


	/*	mensaje con animación y con información	*/
	jQuery(".msg-exito").click(function() {
		// titulo, info, y animacion.
		swal("¡Bien!", "Has hecho clic en el botón :)", "success");
	});


	/*	mensaje con confirmar, cancelar, animación y con información	*/
	jQuery(".msg-warning").click(function() {
		swal({   
			title: "¿Seguro que deseas continuar?", // titulo.  
			text: "No podrás deshacer este paso...",  // info.
			type: "warning",   // animación.
			showCancelButton: true, //visible el botón calcelar.
			cancelButtonText: "Mmm... mejor no", //botón calcelar.  
			confirmButtonColor: "#DD6B55",   //botón confirmar color.
			confirmButtonText: "¡Adelante!",   //texto botón confirmar.
			closeOnConfirm: false }, // si confirma no se cierra aún.
			/* inicia esta función */
			function(){ swal("¡Hecho!", "Acabas de vender tu alma al diablo.", "success"); 
		});
	});


	/*	mensaje con confirmar, cancelar, animación y con información	*/
	jQuery(".msg-cond").click(function() {
		swal({   
			title: "¿Deseas unirte al lado oscuro?",   
			text: "Este paso marcará el resto de tu vida...",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "¡Claro!",   
			cancelButtonText: "No, jamás",   
			closeOnConfirm: false,   
			closeOnCancel: false }, 

			function(isConfirm){   
				if (isConfirm) {     
					swal("¡Hecho!", 
						"Ahora eres uno de los nuestros", 
						"success");   
				} else {     
					swal("¡Gallina!", 
						"Tu te lo pierdes...", 
					"error");   
				} 
			});
	});

	jQuery(".msg-autoclose").click(function() {
		swal({   
			title: "Mensaje con cierre automático",   
			text: "Se cerrará en 3 segundos.",   
			timer: 3000,   
			showConfirmButton: false 
		});
	});

	jQuery(".msg-prueba").click(function() {
		swal({   
			title: "Error usuario o passwor invalido", 	
			text: "Intenta nuevamente",   
			confirmButtonColor: "#EE6B55",
			imageUrl: "img/rananime1.png",   
			});
	});
});

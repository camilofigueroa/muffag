
			function enviar_post_js_8d(dato1,dato2,dato3,dato4,dato5,dato6,dato7,dato8,pagina)
							{
								var parametros = {"nombre" : dato1,"direccion" : dato2,"categoria" : dato3,"pre_1" :dato4,"pre_2" : dato5,"pre_3" : dato6,"observaciones" : dato7,"encuestador" : dato8,};

								$.ajax(
											{

													data: parametros,
													url: pagina,
													type: 'post',

													beforesend: function()
													{
														$("#resultado").html("En proceso...");
													},
													success: function (response) 
													{
													$("#resultado").html(response);
													}
											}
									   );
							}

		

					

	


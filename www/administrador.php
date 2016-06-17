<?php 
	include('clases/Graficos.php');
	$obj_grafico = new Graficos(); 
    /* Empezamos la sesión */
    session_start();

    /* Si no hay una sesión creada, redireccionar al index. */
    if(!isset($_SESSION['usu'])) 
    { // Recuerda usar corchetes.
      header("location: index.php");
    } // Recuerda usar corchetes
    else
    {
 
				 	
?>

<html>
<head>
	<title>MUffAG</title>
	<meta charset="UTF-8">
	<?php  echo $obj_grafico->colocar_cabecera([["l","css/estilo.css"],["l","css/bootstrap.min.css"],["l","https://fonts.googleapis.com/css?family=Open+Sans"],["s","js/jquery-2.1.4.min.js"]]);?>
</head>

<body>




				<img src="imagenes/biodiversidad.png" style="position: relative; left:11%; top:-100%;">
			


	<div class="container" >
		<div class="row">
			<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

					<blockquote>
					  	<p>Administrador</p>
					</blockquote>
				</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6"></div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
						<a href="validar.php?ti=2"><button class="btn btn-success"  type="submit" >Cerrar Sesión</button></a><br>
				
			</div>
		</div>
		
			
	
		<div class="row">
			
			<center><H1>USUARIOS</H1></center>	
		</div>
		<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>
		<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
			<table class="table table-striped" >
					<tbody>
					  <!-- Aplicadas en las celdas (<td> o <th>) -->
						 <tr>
						    <td style=" background-color:#72B62E;">Numero de Documento</td>
						    <td style=" background-color:#72B62E;">Nombre Apellido</td> 
						    <td style=" background-color:#72B62E;">Usuario</td> 
						    <td style=" background-color:#72B62E;">Contraseña</td> 
						   	
						    <td style=" background-color:#72B62E;">OPCIONES</td>
						</tr>
					 	<tr>
					 			<?php echo $obj_grafico->escribir("SELECT n_doc, nom_apell, usuario, contrasena FROM tb_usuarios");?>
					 	</tr>
					  			  	
					</tbody>
				</table>
			</div>
			<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>
		</div>

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<!--<script type="text/javascript" src="../js/encuesta.js"></script>-->
		<script type="text/javascript"></script>
</body>
<?php 
} ?>
</html>



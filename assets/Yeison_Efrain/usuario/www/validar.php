<?php  
	include('Clases/Graficos.php');
	if(isset($_GET['ti']))
			{

				if($_GET['ti']==1)
				{
					$usu	=$_POST['usu'];
					$pass	=$_POST['pass'];

					$obj_gerarquia = new graficos();
					echo $obj_gerarquia->escribir_validacion("SELECT tipo_usuario  FROM tb_usuarios WHERE usuario='$usu' and contrasena='$pass'", $usu);
					//echo $obj_gerarquia->escribir("SELECT * FROM tb_usuarios"); 
				}
				if($_GET['ti']==2)
				{
					session_start();
					session_destroy();	
					mysqli_close();
					header('Location: index.php');
				}
			}

?>
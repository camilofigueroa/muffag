<?php 
    include('clases/Graficos.php'); 
    $obj_grafico = new Graficos();    
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
    <?php  echo $obj_grafico->colocar_cabecera([["s","js/frm_inicio_sesion.js"],["s","js/minified/TweenMax.min.js"],["s","js/minified/EasePack.min.js"],["l","css/estilo.css"],["l","css/bootstrap.min.css"],["s","js/jquery-2.1.4.min.js"]]);?>
</head>
<body>
<div id="contenedor">
        <div id="formulario">

            <div id="titulo">INICIAR SESIÓN</div> <!-- div donde esta guardado el titulo  -->
                <!--se inicia el formulario y se envia por metodo POST ademas de una variable por la url con la funcion de identificar en el archivo validar.php que funcion debe cumplir-->
                    <form action="validar.php?ti=1" method="POST">

                            <div id="contenido_cajas">  <!-- Este div contiene las dos cajas de texto -->
                                <div id="img1"><img src="imagenes/users.png" width="40px"></div>

                                 <div id="img2"><img src="imagenes/loc.png" width="40px"></div>

                                <div id="texto1"><input type="text" class="caja" name="usu" placeholder="Usuario" required autofocus></div>

                                <div id="texto2"><input type="password" class="caja" name="pass" placeholder="Contraseña" required autofocus></div>
                            </div>     

                            <div  id="texto_boton"><center><button class="msg-basico-txt btn btn-info" type="submit" >Iniciar</button></center></div>
                        <!-- <input type="submit"  name="" value="INICIAR" class="boton"> -->
                    </form>
                
        </div>

            <br>
          
</div>

    <?php 

        if(isset($_GET['error']))
        {

            if($_GET['error']==1)
            {
                echo $obj_grafico->alerta_1("!Cuidado "," El usuario y contraseña no existe");
            }
        }
    ?>

</body>
</html>
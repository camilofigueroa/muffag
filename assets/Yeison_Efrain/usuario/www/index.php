<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<script src="minified/TweenMax.min.js"></script>
    <script src="minified/EasePack.min.js"></script>
	 <link rel="stylesheet" type="text/css" href="css/estilo.css">
     <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
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
 <script>
            
            
            window.onload = function()
            {

                console.log( "Esto está funcionando." );
                
                var texto1 = document.getElementById("texto1");
                var texto3 = document.getElementById("img1");
                var texto3 = document.getElementById("img2");
                var texto2 = document.getElementById("texto2");
                var texto3 = document.getElementById("texto3");
              

                TweenLite.to(texto1, 2.5, { ease: Back.easeInOut.config(1.7), y: 0, top:"-20px" , left:"50px", opacity:"1.0"});

                TweenLite.to(img1, 2.5, { ease: Back.easeInOut.config(1.7), y: 0, opacity:"1.0"});

                TweenLite.to(img2, 2.5, { ease: Back.easeInOut.config(1.7), y: 0, opacity:"1.0"});

                TweenLite.to(texto2, 2.5, { ease: Power2.easeOut, y: 0, top:"40px" ,left:"50px", opacity:"1.0"  });

                TweenLite.to(texto_boton, 2.5, { ease: Power3.easeOut, y: 0, top:"80px" ,left:"286px", opacity:"1.0" });

                

                
            };
            function al_completar ()
            {
            	

                    document.getElementById("logo2");
            };
                
        </script>
</div>
    <?php 

        if(isset($_GET['error']))
        {

            if($_GET['error']==1)
            {
    ?>
        <div class="container">
            <div class="alert  alert-danger alert-dismissable">
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Cuidado!</strong> El usuario y contraseña son incorrectos.
            </div>
        </div>

    <?php
            }
        }
    ?>

</body>
</html>
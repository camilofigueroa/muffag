<?php

    include( "clases/BD.php" );

    class Graficos extends BD
    {
        /**
        * Constructor de la clase.
        */
        public function Graficos()
        {
            $this->ini(); //En el constructor se inicializan todos los requerimientos de la clase BD.
        }

        /**
        * Este método se encarga de retornar un resultado en pantalla, úselo solo para probar que la inclusión
        * de la clase fué exitosa.
        * @param        texto           una cadena que representa un texto a mostrar en pantalla.   
        */
        function probar_funcionamiento( $mensaje )
        {
            return "<strong>".$mensaje."</strong>";
        }

        /***********aguegue sus métodos después de esta línea de código****************************************/

        /*
        *esta funcion se encarga de validar el usuario darle el permiso de ingresar al administrador.php o denegar el aceso al ni esistir 
        @param varchar se encarga de recibir la consulta enviada atraves del validar.php
        @param varchar se encarga de recibir la consulta enviada atraves del validar.php
        @Return  Se encarga de retornar los archivos hasta cumplir  con el ciclo while
        */

        function escribir_validacion($cons, $usu)
        {
            //se crea una variable con la finalidad de incluir la funcion de retornar tabla creada en el archivo BD.php
            $res = $this->validar_usuario($cons, $usu);
            if($res[0] == 1)
                {
                    session_start();
                    /* Creamos la sesión */
                    $_SESSION['usu'] = $usu;
                                        
                    header('Location: administrador.php');
                }
                else
                {
                        $a ="<script type='text/javascript'>";
                            $a .="window.location='frm_inicio_sesion.php?error=1'";
                        $a .="</script>";

                        Return $a;
                        
                }
        }

       
        /*
        *esta funcion se encarga de traer los datos de la consulta generada en el archivo del index enviada atraves de un parametro y de hay resivida en el archivo BD.php
        @param varchar se encarga de recibir la consulta enviada atraves del index.php
        @Return  Se encarga de retornar los archivos hasta cumplir  con el ciclo while
        */
        function escribir($cons)
        {
            //se crea una variable con la finalidad de incluir la funcion de retornar tabla creada en el archivo BD.php
            $res = $this->retornar_tabla($cons);
            //echo $cons;
            $b=" ";
                

                    while($fila = mysqli_fetch_array($res)) 
                    {
                        $b .="<tr>";
                        for ($i=0; $i < mysqli_num_fields($res); $i++) 
                        { 
                            
                            $b .="<td class='success'>".$fila [$i]."</td>";
                            
                            
                        } 
                        
                            $b .="<td class='success'><a href='#'><img src='imagenes/borrar.png'></a>&ensp; &ensp;<a href='#'><img src='imagenes/actualizar.png'></a></td>"; 
                        $b .="</tr>";
                    }
                
            Return $b;
            
            
        }

        function colocar_cabecera($arreglo)
        {

            $respuesta="";
            for ($i=0; $i <count($arreglo); $i++) 
            { 
                /*if ($arreglo[$i][0]=='s') 
                {
                   /// $respuesta .= "<script src='".$arreglo[$i][1]."'></script>";
                }
                else
                {
                   /// $respuesta .= "<link rel='stylesheet' type='text/css' href='".$arreglo[$i][1]."'>";
                }*/
                /*<script src="js/minified/TweenMax.min.js"></script>
                <link rel="stylesheet" type="text/css" href="css/estilo.css">*/
                switch ($arreglo[$i][0]) 
                {
                    case 's':
                        $respuesta .= "<script src='".$arreglo[$i][1]."'></script>";
                        break;
                    case 'l':
                         $respuesta .= "<link rel='stylesheet' type='text/css' href='".$arreglo[$i][1]."'>";
                        break;
                    default:
                       
                        break;
                }
            }

            Return $respuesta;
        }

        function alerta_1($mensaje_1, $mensaje_2)
        {
            $respuesta="";
                $respuesta .="<div class='container'>";
                    $respuesta .="<div class='alert  alert-danger alert-dismissable'>";
                        $respuesta .="<button type='button' class='close' data-dismiss='alert'>&times;</button>";
                            $respuesta .="<strong>";
                                $respuesta .= $mensaje_1;
                             $respuesta .="</strong>"; 
                        $respuesta .=$mensaje_2;
                    $respuesta .="</div>";
                $respuesta .="</div>";
                Return $respuesta;
        }
    }







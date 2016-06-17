<?php

    class BD
    {

        public $servidor;
        public $usuario;
        public $clave;
        public $bd;

        /**
        * Constructor de la clase.
        */
        public function BD()
        {

        }

        /**
        * Inicializa los valores básicos o que se requieren para que haya conexión con la base de datos.
        */
        public function ini()
        {
            include( "config.php" ); //Se acude al archivo de configuración para los parámetros de la base de datos.

            $this->servidor     = $servidor;
            $this->usuario      = $usuario;
            $this->clave        = $clave;
            $this->bd           = $bd;

            //-------puede agregar más código si se requieren datos adicionales desde el config -----------------
        }


        /**
        * Realiza una conexión simple a la base de datos.
        * @return       conexion        
        */
        private function conectar_a_bd()
        {
            return mysqli_connect( $this->servidor, $this->usuario, $this->clave, $this->bd );
        }

        /*
        *en esta funcion se elaborar la conexion al servidor y ala base de datos 
        *no resive ningun parametro no funcion
        @return retorna la conexion ala base de datos y servidor 
        */
        function conectar()
        {
                 Return mysqli_connect($this->servidor, $this->usuario, $this->clave, $this->bd);
                
        }


        /**
        * Se encarga de retornar la fecha y hora desde el servidor de la base de datos.
        */
        public function traer_fecha_bd()
        {
            $respuesta = "";

            $sql = " SELECT NOW() AS fecha ";
            $conexion = $this->conectar_a_bd();
            $resultado = $conexion->query( $sql );

            while( $fila = mysqli_fetch_assoc( $resultado ) )
            {
                $respuesta = $fila[ 'fecha' ];
            }

            mysqli_free_result( $resultado ); //Se libera la memoria destinada a la recopilación de datos de la BD.

            return $respuesta;
        }

        /***********aguegue sus métodos después de esta línea de código****************************************/

        /*
        
        */

        function validar_usuario($cons, $usu)
        {
            
                $con = $this->conectar();
                $resultado = $con->query($cons);
                $a = mysqli_fetch_array($resultado);
                Return $a;
        }

        function insertar($tabla, $campos)
        {
            
            
            $c=", ";
            $value  =" VALUES (";
            $insert ="INSERT INTO ".$tabla."(";
            for ($i=0; $i <count($campos) ; $i++) 
            { 
                if($i>=count($campos)-1)$c=" ";
                    
                    $insert .= $campos[$i][1].$c;

                    $value .= "'".$campos[$i][0]."'".$c;
            }

            $insert_into= $insert.") ".$value.")";
            $con = $this->conectar();
            $resultado = $con->query($insert_into);
            Return $resultado;
    
        }

        /*
        *en esta funcion se encarga de recivir la consulta enviada desde el archivo graficos.php y hacer su consulta en la base de datos 
        @param varchar recive la consulta de la base de datos 
        @return retorna la consulta
        */
        function retornar_tabla($cons)
        {
            
                $con = $this->conectar();
                $resultado = $con->query($cons);
                Return $resultado;
        }





    }
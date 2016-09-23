<?php

    include_once( "BD.php" );

    class Buscador extends BD
    {
        /**
        * Este es el constructor de la funcion.
        *
        */
        function Buscador()
        {
            $this->ini(); //En el constructor se inicializan todos los requerimientos de la clase BD.
        }

        /**
        * Este método se encarga de devolver a la interfaz del usuario toda la información de las coincidencias de los
        * organismos solicitados.
        * @param        texto           Es la cadena que solicita el usuario para ser investigada o evaluada.
        */
        function retornar_organismos( $cadena )
        {
            $respuesta = "";
            $cadena = TRIM( strtolower( $cadena ) ); //Convierte todo a minúscula.
            $cadena = $this->prevenir_inyeccion_sql( $cadena );
            if( trim( $cadena ) == "" ) $cadena = "busquedaindefinida"; //Se coloca un resultado por defecto si no hay busqueda.


            //echo $cadena."<br><br>";

            $sql = $this->retornar_sql_busqueda( $cadena );
            //$this->escribir_archivo( $sql ); //En caso de necesitar ver el sql, al quitar el comentario de esta línea, quedará en sql.txt

            //echo $sql; //Ojo con las impresiones, pueden dañar la ejecución de AngularJs

            $conexion = $this->conectar();
            $resultado = $conexion->query( $sql );
            $respuesta = $this->organizar_organismos( $resultado );

            return $respuesta;
        }

        /**
        * Este método retorna los datos de los archivos multimedia de un determinado organismo.
        * @param        numero          dato que servirá para mostrar todo sobre un organismo.
        * @return       texto           cadena de carateres que representa código html para colocar fotos, videos, etc.
        */
        function retornar_multimedia( $id_organismo, $campo = null )
        {
            $respuesta = "";

            if( $campo == null ) $campo = " CONCAT( url_multimedia, '#', autor ) AS url_multimedia ";
            
            $sql  = " SELECT $campo ";
            $sql .= " FROM tb_multimedia t2, tb_formato t1 ";
            $sql .= " WHERE t1.id_formato = t2.id_formato ";
            $sql .= " AND id_organismo = $id_organismo ";

            $this->escribir_archivo( $sql , "-sql" );

            //Se quitan los distinct o comandos de bases de datos porque se requiere solo el campo.
            if( strpos( strtolower( $campo ), "distinct") >= 0 ) $campo = TRIM( str_replace( "distinct", "", strtolower( $campo ) ) );
            if( strpos( strtolower( $campo ), "concat(") >= 0 ) $campo = "url_multimedia";
            //$this->escribir_archivo( $campo , "-distinct" );

            $conexion = $this->conectar();
            $resultado = $conexion->query( $sql );

            if( mysqli_num_rows( $resultado ) > 0 )
            {
                while( $fila = mysqli_fetch_assoc( $resultado ) )
                {
                    /*if( $respuesta != "" ) $respuesta .= ",";
                    $respuesta .= '{"Url":"'.$fila[ "url_multimedia" ].'",';
                    $respuesta .= '"Autor":"'.utf8_encode( $fila[ "autor" ] ).'",';
                    $respuesta .= '"Tipo_formato":"'.utf8_encode( $fila[ "tipo_de_formato" ] ).'",';
                    $respuesta .= '"Extension":"'.utf8_encode( $fila[ "extension" ] ).'"}';*/

                    //Después de múltiples intentos en el angular y utilizando sanitize, que tampoco dio resultado
                    //para el cargue de las imágenes. Se ha resuelto por enviar una cadena que será fragmentada e impresa
                    //directamente en el html como imagen, pero usando angular para replicar las rutas mediante ng-repeat.
                    //$respuesta .= "<img src='".$fila[ 'url_multimedia' ]."'>";
                    //$respuesta .= "[menorq]img src=[comilla1]".$fila[ 'url_multimedia' ]."[comilla1][mayorq] [fin_item]";
                    //$respuesta .= "<strong>".$fila[ 'url_multimedia' ]."</strong>";
                    //$respuesta .= $fila[ 'url_multimedia' ]."[fin_item]";
                    $respuesta .= $fila[ $campo ]."[fin_item]";
                }

            }else{
                    $respuesta = "";
                }

            return $respuesta;
        }

        /**
        * Este método se encarga de organizar un arreglo de registros devuelto por la base de datos para lo que requiera 
        * la interfaz.
        * @param            arreglo             registros devueltos por una consulta de base de datos.               
        */
        private function organizar_organismos( $registros )
        {
            $respuesta = "";
            $superconjunto = ""; //Esta variable en el otro programa se corresponde con un parámetro del formulario.

            if( mysqli_num_rows( $registros ) > 0 )
            {
                while( $fila = mysqli_fetch_assoc( $registros ) )
                {
                    if( $respuesta != "" ) $respuesta .= ",";
                    $respuesta .= '{"Id":"'.$fila[ "id_organismo" ].'",';
                    $respuesta .= '"Nombre_comun":"'.utf8_encode( $fila[ "nom_comun" ] ).'",';
                    $respuesta .= '"Nombre_cientifico":"'.utf8_encode( $fila[ "nom_cientifico" ] ).'",';
                    $respuesta .= '"Descripcion":"'.utf8_encode( $fila[ "descripcion" ] ).'",';
                    $respuesta .= '"Ecologia_y_distribucion":"'.utf8_encode( $fila[ "ecologia_y_distribucion" ] ).'",';
                    $respuesta .= '"Riesgos_y_amenazas":"'.utf8_encode( $fila[ "riesgos_y_amenazas" ] ).'",';
                    $respuesta .= '"Informacion_adicional":"'.utf8_encode( $fila[ "informacion_adicional" ] ).'",';
                    $respuesta .= '"Usos_y_aprovechamiento":"'.utf8_encode( $fila[ "usos_y_aprovechamiento" ] ).'",';
                    $respuesta .= '"Nom_familia":"'.utf8_encode( $fila[ "nom_familia" ] ).'",';
                    $respuesta .= '"Nom_clase":"'.utf8_encode( $fila[ "nom_clase" ] ).'",';
                    $respuesta .= '"Nom_especie":"'.utf8_encode( $fila[ "nom_especie" ] ).'",';
                    $respuesta .= '"Nom_genero":"'.utf8_encode( $fila[ "nom_genero" ] ).'",';
                    $respuesta .= '"Nom_orden":"'.utf8_encode( $fila[ "nom_orden" ] ).'",';
                    $respuesta .= '"Nom_localidad":"'.utf8_encode( $fila[ "nom_localidad" ] ).'",';
                    $respuesta .= '"Nom_municipio":"'.utf8_encode( $fila[ "nom_municipio" ] ).'",';
                    $respuesta .= '"Decision":"'.utf8_encode( $fila[ "decision" ] ).'",';
                    $respuesta .= '"Fotografos_o_autores":"'.utf8_encode( $fila[ "fotografos_o_autores" ] ).'",';
                    //$respuesta .= '"Localidad":"'.utf8_encode( $fila[ "localidad" ] ).'",';
                    $respuesta .= '"Superconjunto":"'.utf8_encode( $superconjunto ).'"}';
                }

                $respuesta ='{"records":['.$respuesta.']}';

            }

            return $respuesta;
        }

        /**
        * Este método se encarga de armar el sql para realizar la búsqueda del usuario.
        * @param            texto           palabra que representa las intenciones de búsqueda del usuario.
        * @param            texto           des representa, de acuerdo a su contenido, diferentes patrones patrones de comportamiento o decisión para le sistema.
        * @return           texto           cadena que representa el sql del sistema como búsqueda.
        */
        private function retornar_sql_busqueda( $cadena, $des = null )
        {
            $respuesta = "";
            $comando_busqueda = "-1";
            $url_fotos = "-1";
            $fotografos_o_autores = "";
            //$des = $des == null ? "": $des; //El parámetro des es importante, puede ser un ID para un organismo u otro comando de búsqueda.
    
            if( strpos( strtolower( $cadena ), "id:" ) !== false ) //Si la búsqueda es por id, entonces saque el identificador.
            {
                $comando_busqueda = str_replace( "id:", "", strtolower( $cadena ) ); //Se extrae el dato de interés.
                $url_fotos = $this->retornar_multimedia( TRIM( $comando_busqueda ) );
                //$fotografos_o_autores = $this->retornar_multimedia( TRIM( $comando_busqueda ), " DISTINCT autor" ); //Buscamos solo los autores.
                if( $url_fotos == "" ) $url_fotos = "-2"; //Cuando no se retornan imágenes o videos, no se colocarán en el sitio.
            }

            $respuesta .= " SELECT t1.*, t2.nom_familia, t3.nom_clase, t4.nom_especie, t5.nom_genero, t6.nom_orden, t7.nom_localidad, t8.nom_municipio ";
            $respuesta .= ", '".$url_fotos."' AS decision, "; //Aquí interviene una búsqueda específica, corta o detalle de organismo.
            $respuesta .= " '".$fotografos_o_autores."' AS fotografos_o_autores "; //Esto no está funcional al 22/09/2016.
            $respuesta .= " FROM tb_organismos t1, tb_familia t2, tb_clase t3, tb_especie t4, tb_genero t5, tb_orden t6, tb_localidad t7, tb_municipio t8 ";
            $respuesta .= " WHERE t1.id_familia         = t2.id_familia ";
            $respuesta .= " AND t1.id_clase             = t3.id_clase ";
            $respuesta .= " AND t1.id_especie           = t4.id_especie ";
            $respuesta .= " AND t1.id_genero            = t5.id_genero ";
            $respuesta .= " AND t1.id_orden             = t6.id_orden ";
            $respuesta .= " AND t1.id_localidad         = t7.id_localidad ";
            $respuesta .= " AND t7.ID_MUNICIPIO         = t8.id_municipio ";
            $respuesta .= " AND t1.sn_publicar          LIKE '%s%' ";
            $respuesta .= " AND ( ";

            if( strpos( $cadena, "," ) !== false ) //Las comas indican que se está buscando una sola palabra. De lo contrario, serán varias.
            {
                $arreglo_palabras = explode( ",", $cadena ); //Se debe separar cada palabra para ser incluida en el SQL.
                //print_r( $arreglo_palabras );

                for( $i = 0; $i < count( $arreglo_palabras ); $i ++ ) //Cada palabra es separada para entrar al juego en el where del sql.
                {
                    if( TRIM( $arreglo_palabras[ $i ] ) != "" )
                    {
                        //La primera iteración no debe tener OR.
                        $respuesta .= $this->retornar_conjunciones_or_sql( $arreglo_palabras[ $i ], $i == 0 ? "": " OR " );
                    }
                } 

            }else{
                    //Si la cadena no tiene vacíos, la búsqueda se hace normal.
                    $respuesta .= $this->retornar_conjunciones_or_sql( $cadena );
                }

            $respuesta .= " ) ";
            $respuesta .= " LIMIT 10 ";

            //echo $respuesta;

            return $respuesta;
        }

        /**
        * Cuando un usuario digita varias palabras separadas por espacio o coma, el buscador va a asumir que hay diferentes búsquedas separadas.
        * @param        texto           Cadena que representa una sola palabra para buscar.
        * @return       texto           Una cadena que complementa el sql ya existente para la búsqueda actual.
        */
        function retornar_conjunciones_or_sql( $cadena, $sql_antes = null )
        {
            $respuesta = "";

            if( strpos( $cadena, "id:" ) === false )
            {
                if( $sql_antes != null ) $respuesta .= $sql_antes; 
                $respuesta .= "             t1.nom_comun                LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.nom_cientifico           LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.descripcion              LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.ecologia_y_distribucion  LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.riesgos_y_amenazas       LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.informacion_adicional    LIKE '%$cadena%' ";
                $respuesta .= "         OR  t1.usos_y_aprovechamiento   LIKE '%$cadena%' ";
                $respuesta .= "         OR  t2.nom_familia              LIKE '%$cadena%' ";
                $respuesta .= "         OR  t3.nom_clase                LIKE '%$cadena%' ";
                $respuesta .= "         OR  t4.nom_especie              LIKE '%$cadena%' ";
                $respuesta .= "         OR  t5.nom_genero               LIKE '%$cadena%' ";
                $respuesta .= "         OR  t6.nom_orden                LIKE '%$cadena%' ";
                $respuesta .= "         OR  t7.nom_localidad            LIKE '%$cadena%' ";
                $respuesta .= "         OR  t8.nom_municipio            LIKE '%$cadena%' ";
    
            }else{
                    $cadena = str_replace( "id:", "", $cadena ); //Sacamos el caracter de comando del juego.
                    $respuesta .= " t1.id_organismo = '$cadena' ";
                }


            return $respuesta;
        }

        /**
        * Escribe en un archivo un resultado enviado por parámetro.
        * @param        texto       mensaje a escribir en el archivo.
        */
        function escribir_archivo( $mensaje, $complemento_nombre = null )
        {
            if( $complemento_nombre == null ) $complemento_nombre = "";

            $apuntador = fopen( "sql".$complemento_nombre.".txt", "w" );
            fwrite( $apuntador, $mensaje );
            fclose( $apuntador );
        }

        /**
        * Remplaza pósibles comandos sql en la entrada de texto de la búsqueda, por vacíos. También trata otros caracteres.
        * @param        texto           Cadena que representa lo digitado por el usuario.
        * @param        texto           Cadena retornada aparentemente libre de sql.
        */
        function prevenir_inyeccion_sql( $cadena )
        {
            $arreglo_caracteres = [];

            //Todos estos caractes de la primera columna del vector, serán remplazados por la segunda.
            array_push( $arreglo_caracteres, [ "id: ", "id:" ] );
            array_push( $arreglo_caracteres, [ "update", "" ] );
            array_push( $arreglo_caracteres, [ "delete", "" ] );
            array_push( $arreglo_caracteres, [ "drop", "" ] );
            array_push( $arreglo_caracteres, [ "'", "" ] );
            array_push( $arreglo_caracteres, [ "!", "," ] );
            array_push( $arreglo_caracteres, [ "¡", "," ] );
            array_push( $arreglo_caracteres, [ "-", "," ] );
            array_push( $arreglo_caracteres, [ ";", "," ] );
            array_push( $arreglo_caracteres, [ ".", "," ] );
            //array_push( $arreglo_caracteres, [ ":", "," ] ); Los dos puntos no porque es separador de comandos.
            array_push( $arreglo_caracteres, [ "@", "," ] );
            array_push( $arreglo_caracteres, [ "/", "," ] );
            array_push( $arreglo_caracteres, [ "\\", "," ] );
            array_push( $arreglo_caracteres, [ " ", "," ] ); //La coma va a ser el separador por excelencia para las búsquedas.
            array_push( $arreglo_caracteres, [ ",,", "," ] );

            for( $i = 0; $i < count( $arreglo_caracteres ); $i ++ )
            if( strpos( strtolower( $cadena ), $arreglo_caracteres[ $i ][ 0 ] ) !== false ) $cadena = str_replace( $arreglo_caracteres[ $i ][ 0 ], $arreglo_caracteres[ $i ][ 1 ], $cadena );            

            return $cadena;
        }
    }
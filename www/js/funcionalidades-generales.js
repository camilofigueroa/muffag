/**
 * Autor: Camilo Figueroa ( Crivera )
 * Este script se crea con el fin de dar soporte a todo lo que tiene 
 * que ver con el sitio.
 * 
 */

var obj_mecanismos = new MecanismosGenerales(); //PAra usar este método no se debe esperar el retorno de las funciones.
var acumuladorApp = angular.module( 'acumuladorApp', [] );

window.onload = function() //---------------------------------cargue de los documentos o ejecución, sirve de función ini() --------------------------
{
    obj_movimiento  = new movimiento(); //Nacimiento de la instancia de la clase.

    obj_mecanismos.ajustar_contenedor_movimiento_mapa();
    obj_mecanismos.al_redimensionar_pantalla();
    //obj_mecanismos.imprimir_magnitudes();
    //obj_mecanismos.ajustar_temporizador();

    //console.log( "Entrando al módulo" );

    var ala1 = document.getElementById( "ala-izquierda" );
    var ala2 = document.getElementById( "ala-derecha" );

    //Aquí se capturan los ids y elementos html del dom para poder controlarlos.
    obj_movimiento.ala_derecha = ala2;
    obj_movimiento.ala_izquierda = ala1;
    obj_movimiento.ala_derecha_sombra = document.getElementById( "ala-derecha-sombra" );
    obj_movimiento.ala_izquierda_sombra =document.getElementById( "ala-izquierda-sombra" );

    TweenMax.to( ala1, 1, { transform: "rotateY( 0deg )" } );
    TweenMax.to( ala2, 1, { transform: "rotateY( 0deg )" } );

    setInterval( function(){ obj_mecanismos.en_temporizador(); }, 500 );
} //---------------------------------------------------------fin cargue de documentos o función ini() -----------------------------------------------

/******************************************* A N G U L A R ******************************************************************/
var app = angular.module( 'acumuladorApp', ['ngSanitize'] );

app.controller( "acumuladorAppCtrl", 
            
    //[ "$scope",  //Originalmente solo se minificaba el scope.
    [ "$scope", "$http", //Esto es para minificar, pero interfiere con lo de php, hay que minificar las otras variables.
        
        function( $scope, $http )
        {
            //$scope.Message = "My name is <span><b>Camilo Figueroa</b></span>";

            //Esto va en comentarios por el momento. Aunque en el momento de las pruebas del 31/08/2016 esta línea estaba sin comentarios,
            //todo funcionó correctamente. Como se puede ver esta misma línea está funcionando hacia abajo, lo cual resalta la libertad
            //del javascript para ajustar las funciones, en funciones, con niveles tolerantes de profundidad en la construcción.
            //$http.get( 'consultar_organismo.php?busqueda=chingolo' ).success //Aquí había un error, porque el valor chingolo estaba quemado.
            //(
                $scope.cargar_datos = function()
                {
                    var busqueda = $scope.datos.texto2; //Se captura el lo digitado en el texto de búsqueda.

                    //console.log( busqueda );
                    //console.log( busqueda.length );
                    //console.log( "Superconjunto " + $scope.superconjunto ); //Esto proviene de un ng-init
                    
                    if ( busqueda.length > 3 ) //Solo se inicia la búsqueda si el texto digitado supera los tres carcateres.
                    {
                        //$http.get( 'consultar_organismo.php?busqueda=' + $scope.datos + '&superconjunto=' + $scope.superconjunto ).success
                        $http.get( 'consultar_organismo.php?busqueda=' + busqueda  ).success //Funcional al 31/08/2016
                        (								                                                       
                            function( response )
                            {
                                var cad = response.records[ 0 ].Decision;
                                var arreglo_imagenes = [];
                                var arreglo_imagenes2 = [];
                                //$scope.arreglo = "";
                                
                                //if( cad != -1 ) //Evaluo lo que hay en un recorset.
                                //{                                
                                    //Esto se hace porque el sanitize no está funcionando y no renderiza las imágenes. Entonces se traen las direcciones
                                    //de las imágenes con caracteres sustitutos de algunas etiquetas html y aqui se reconstruyen con lo que deben tener.
                                    /*while( cad.indexOf( "[menorq]" ) != -1 || cad.indexOf( "[mayorq]" ) != -1 || cad.indexOf( "[comilla1]" ) != -1 )
                                    {
                                        cad = cad.replace( "[menorq]", "<" ); //Ejemplo de string replace
                                        cad = cad.replace( "[mayorq]", ">" );
                                        cad = cad.replace( "[comilla1]", "'" );
                                        console.log( cad );    
                                    }                            */   
                  
                                    //arreglo_imagenes = cad.split( "[fin_item]" );
                  
                                    /*for( var i = 0; i <= 2; i ++ )
                                    {
                                        cad = "fdsfgsd"; //arreglo_imagenes[ i ] + "";
                                        cad = cad.substring( 0, 3 );
                                        arreglo_imagenes2.push( cad );  
                                    } */                
                                    
                                    
                                    
                                    
                                    //div_imagenes.innerHTML = "fdsfsd";
                                    
                                    //arreglo_imagenes = [ "imagenesusuarg fdg fdsg fdsgf dgsfd gfd", "sfsfdsfsd fdgfsgfds gsfdg sfdg" ];
                                    //arreglo_imagenes = [ 1,2,3,4, 5, 6  ]; //Esto funciona al enviarlo al html.
                                    //arreglo_imagenes = [ "imagenes/uno(4t4).jpg", "2", ""  ]; //Esto también funciona. 
                                    //console.log( arreglo_imagenes );
                                    //$scope.arreglo = arreglo_imagenes;
                                    //console.log( $scope.arreglo ); 
                  
                                    //response.records[ 0 ].Decision =  "<div>" + cad + "</div>"; //Puedo cambiar lo que hay en un recordset.
                                //}
                                
                                //$scope.arreglo = "Probando"; //Se crea una variable vigente en el scope.
                                $scope.informacion = response.records;
                                $scope.Message = $scope.datos.texto2;
                                //console.log( "Imprimiendo registros." );
                                //console.log( response.records[ 0 ].Decision ); //Extrae un elemento del vector de registros.
                            }
                        );

                    }else{ $scope.informacion = ""; /*Aquí los divs contenedores de resultados desaparecen cuando no hay información en el texto de búsqueda */ }
                }
                
                //$scope.impresion = "Funciona el angular";
            //);

            $scope.mover_datos = function()
            {
                var respuesta = "";
                var i = 0;

                $scope.informacion = $scope.datos.texto2;
                $scope.Message = $scope.datos.texto2; //Esto es lo del sanitize o módulo para renderizar html.

                //$scope.campos = respuesta;
            }      

            $scope.ajustar_comando_busqueda_completa = function( id )
            {
                console.log( "Listo " + id );
                document.getElementById( "texto-busqueda" ).value = "";
                $scope.datos.texto2 = "id: " + id;                 
                $scope.cargar_datos(); 
            }

            $scope.range = function(min, max, step) 
            {
                step = step || 1;
                var input = [];
                
                for (var i = min; i <= max; i += step) 
                {
                    input.push(i);
                }

                return input;
            };      
        }
    ] //Si se minifica, se deben minificar todas las llamadas inyecciones, de lo contrario mejor no minifique nada.
); 



//acumuladorAppCtrl

//Esto funcionó parcialmente solo que las otras funciones interfirieron.
/*var app = angular.module('acumuladorApp', ['ngSanitize'])
app.controller('acumuladorAppCtrl', function ($scope) {
    $scope.Message = "My name is <span><b>Camilo Figueroa</b></span>";
});*/

/* ************************************************** C L A S E S ************************************************** */

function MecanismosGenerales() //Este modo simple de declarar no permite ejecutar las funciones internamente.
//Más sin embargo es importante resaltar que sí permite crear instancias.
//var obj_mecanismos = new function()
{
    this.ancho_pantalla = screen.width;
    this.alto_pantalla = screen.height;
    this.ancho_interior = window.innerWidth;
    this.alto_interior = window.innerHeight;
    //this.altura_total_documento = document.body.scrollHeight; //Esto no funciona igual en firefox.
    this.altura_total_documento = 0;
    this.mapa_izquierda = 0; 
    this.vector_posiciones = [];
    this.contenedor_mapa = document.getElementById( "contenedor-mapa" );
    this.contenedor_mariposa = document.getElementById( "contenedor-mariposa" );
    //this.alto_contenedor_mariposa = document.getElementById( "contenedor-mariposa" ).style.height;
    this.maximo_alto_contenedor_mariposa = "470px"; //Esa dimensión es lo que está en el css.

    /**
     * Este método fue sacado del siguiente sitio: http://james.padolsey.com/javascript/get-document-height-cross-browser/
     * La idea es obtener la altura total del documento sin comprometer el dato por la diferencia en el funcionamiento de los navegadores. 
     * Se coloca aquí porque el javascript requiere que la función que retorna esté declarada antes de su uso.
     */
    this.retornar_maxima_altura = function()
    {
        var D = document;
        var max_altura = Math.max( D.body.scrollHeight, D.documentElement.scrollHeight, D.body.offsetHeight, D.documentElement.offsetHeight, D.body.clientHeight, D.documentElement.clientHeight );

        console.log( " max_altura: " + max_altura );

        return max_altura;
    }

    this.altura_total_documento = this.retornar_maxima_altura() + 200;

    //console.log( "this.maximo_alto_contenedor_mariposa" + this.maximo_alto_contenedor_mariposa );

    /**
     * Al inicio esta función era la encargada de establecer el temporizador
     * pero no funcionó.
     */
    this.ajustar_temporizador = function()
    {
        setInterval( this.en_temporizador(), 5000 );
    }

    /**
     * Método que sirve de temporizador o timer.
     */
    this.en_temporizador = function()
    {
        //console.log( "Impresión por temporizador." + Math.random() );
        this.vector_posiciones.push( this.mapa_izquierda );
        
        if( this.vector_posiciones.length > 3 ) 
        this.vector_posiciones.shift();
        
        //console.log( this.vector_posiciones );
        //console.log( "Diferencia posiciones " + this.calcular_movimiento() );

        if( this.calcular_movimiento() == 0 )
        {
            this.contenedor_mapa.style.opacity = 0.2;

        }else{
                this.contenedor_mapa.style.opacity = 1;
            }
    }

    /**
     * Retorna un némero para defininir si el usuario se está moviendo con el scroll.
     */
    this.calcular_movimiento = function()
    {
        var movimiento = 0;
        var i = 0;
        var suma = 0;

        if( this.vector_posiciones.length >= 3 )
        {
            for( i = 0; i < this.vector_posiciones.length - 1; i ++ )
            {
                suma = Math.abs( this.vector_posiciones[ i + 1 ] - this.vector_posiciones[ i ] ); 
            }
        }

        return suma / this.vector_posiciones.length;
    }

    /**
     * Para las maromas del parallax es necesario ajustar o reacomodar el
     * contenedor del mapa.
     */
    this.ajustar_contenedor_movimiento_mapa = function()
    {
        var mapa = document.getElementById( "contenedor-movimiento-mapa" );
        //console.log( "Ajustando contendor de movimiento: " + this.altura_total_documento );
        mapa.style.height = this.altura_total_documento + "px";
    }

    /**
     * Esto se ejecuta cuando se redimensiona el navegador, sirve en el evento
     * en que el contenido sea cargado en una tableta, phablet, o smartphone.
     */
    this.al_redimensionar_pantalla = function()
    {
        var cad = "";
        var sn_prueba = 1; //Si está en producción, colocar 0, cero.

        this.ancho_pantalla = screen.width;
        this.alto_pantalla = screen.height; 
        this.ancho_interior = window.innerWidth;
        this.alto_interior = window.innerHeight; 
        //console.log( "Se ha redimensionado el sitio = " + this.ancho_pantalla + " " + this.alto_pantalla );
        //return 

        //Cuando el ancho de la pantalla desciende, cambiar cosas.
        if( this.ancho_interior < 500 )
        {
            this.cambiar_mariposa( 0 );

        }else{
                this.cambiar_mariposa( 1 );
            }

        //this.imprimir_magnitudes();

        if( sn_prueba == 1 )
        {
            cad += "window.innerWidth: " + this.ancho_interior;

            document.getElementById( "contenedor-informacion-sistema" ).innerHTML = cad;
        }
    }

    /**
     * Este evento sucede cuando mueven la barra lataral para desplazarse hacia abajo. En este evento se mueve el mapa.
     */
    this.al_mover_barra_lateral = function()
    {
        //Esta variable se carga dependiendo de lo que el navegador de turno requiera.
        var movimiento_scroll =  document.body.scrollTop == 0 ? document.documentElement.scrollTop: document.body.scrollTop;

        //Aquí se mueve el mapa verticalmente. 
        //this.contenedor_mapa.style.top = ( movimiento_scroll + 80 ) + "px";

        //console.log( document.body.scrollTop == 0 ? "1": "2" );

        /* Para el cálculo de la posición del mapa.

            si  alto documento = ancho documento
                altura actual = ?

            Entonces:

            altura actual * ancho documento / alto documento = ? 
        */

        //this.mapa_izquierda = movimiento_scroll * this.ancho_interior / this.altura_total_documento;
        //this.contenedor_mapa.style.left = ( this.mapa_izquierda / 1.5 ) + "px";

        //console.log( "Haciendo scrolling" );
        //this.imprimir_magnitudes();
    }

    /**
     * Se encarga de imprimir en la consola las magnitudes importantes en los
     * efectos de movimiento.
     */
    this.imprimir_magnitudes = function()
    {
        var html = document.documentElement;

        console.clear();

        //Estas magnitudes se conservan constantes en el evento de scrolling.
        console.log( "this.ancho_pantalla: " + this.ancho_pantalla );
        console.log( "this.alto_pantalla: " + this.alto_pantalla );
        console.log( "this.ancho_interior: " + this.ancho_interior );
        console.log( "this.alto_interior: " + this.alto_interior );
        console.log( "document.body.scrollTop: " + document.body.scrollTop );
        console.log( "html.scrollTop: " + html.scrollTop );
        console.log( "this.altura_total_documento: " + this.altura_total_documento );
        console.log( "document.body.scrollHeight: " + document.body.scrollHeight );
        console.log( "document.documentElement.scrollHeight: " + document.documentElement.scrollHeight  );
        console.log( "document.body.offsetHeight: " + document.body.offsetHeight );
        console.log( "document.documentElement.offsetHeight: " + document.documentElement.offsetHeight );
        console.log( "document.body.clientHeight: " + document.body.clientHeight );
        console.log( "document.documentElement.clientHeight: " + document.documentElement.clientHeight );
        console.log( "Max altura: " + Math.max( document.body.scrollHeight, document.documentElement.scrollHeight, document.body.offsetHeight, document.documentElement.offsetHeight, document.body.clientHeight, document.documentElement.clientHeight ) );
    }

    this.cambiar_mariposa = function( des )
    {
        if( des == 0 )
        {
            this.contenedor_mariposa.style.visibility = "hidden";
            this.contenedor_mariposa.style.width = "0px";
            this.contenedor_mariposa.style.height = "0px";
            //this.contenedor_mariposa.innerHtml = "Aquí estoy";

        }else{
                this.contenedor_mariposa.style.visibility = "visible";
                this.contenedor_mariposa.style.width = "602px";
                this.contenedor_mariposa.style.height = "470px";
            }
    }
    
    //No se deben declarar funciones en esta última parte, de las cuales se espere un retorno de valores.

}

/**
 * Este método fue sacado del siguiente sitio: http://james.padolsey.com/javascript/get-document-height-cross-browser/
 * La idea es obtener la altura total del documento sin comprometer el dato por la diferencia en el funcionamiento de los navegadores. 
 * 
 */
/*obj_mecanismos.prototype.retornar_maxima_altura = function()
{
    var D = document;
    var max_altura = Math.max( D.body.scrollHeight, D.documentElement.scrollHeight, D.body.offsetHeight, D.documentElement.offsetHeight, D.body.clientHeight, D.documentElement.clientHeight );

    console.log( " max_altura: " + max_altura );

    return max_altura;
}*/





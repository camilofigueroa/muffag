  
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
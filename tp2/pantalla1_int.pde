void pantalla1 (){
    background(10);
  image (imag1, 0, y, 640, 480);
  //imag chihiro2
 image (imag2, -20, yChihiro , 190, 190);
 
//texto
tint(255, opTexto);
fill(255);
 textFont(miTexto1);
 textAlign(CENTER, CENTER);
 text(tituloIntro, xTexto, yTexto);
 noTint();
// primer movimiento
if(estado == 0){
  y += 2;
  yChihiro += 2;
   yTexto += 2;
  
  //cuando llegan 
if(y >= 0){
  y = 0;
  yChihiro = 290;
  yTexto = 240;
  estado = 1;
  //guarda frame actual
  miVariable = frameCount;
}
}

// pausa
if(estado == 1){
  //espera 5 s
if(frameCount - miVariable > 150){
  estado = 2;
}
}
 //seg movimiento 
 if(estado == 2){
  //imagenes bajan 
 y += 2;
 yChihiro += 2;  
//texto se va a la izquierda
xTexto -= 2;
}
if(estado == 2 && y > 480){
  pantalla = 2;

  // pantalla2 trans
  estadoPantalla2 = 0;
  xImag3 = -640;
  op4 = 0;
  op5 = 0;
  tiempoPantalla2 = frameCount;
}
}
 
  
  
  
  

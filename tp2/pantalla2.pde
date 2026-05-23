void pantalla2 (){
  background(0);
  //imagen 3 entra desde la izq
  if (estadoPantalla2 == 0) {
     image(imag3, xImag3, 0, 640, 480);
 //movim
    xImag3 += 5;
    // cuando llega al cnetro
    if (xImag3 >= 0) {
      xImag3 = 0;
      estadoPantalla2 = 1;
    }
  }
  //imaag3
  if (estadoPantalla2 == 1) {
    image(imag3, 0, 0, 640, 480);
    tint(255, op4);
    image(imag4, 0, 0, 640, 480);
    noTint();
    op4 += velocidad;
    if (op4 >= 255) {
      op4 = 255;
      estadoPantalla2 = 2;
 }
}
//imag5
if(estadoPantalla2 == 2){
  //imag5 sale
  image(imag5, xImag5, 0, 640, 480);
   //texto p2
  fill(255);
  textFont(miTexto2);
  textAlign(CENTER, CENTER);
  text(textoPantalla2, xTextoP2, yTextoP2);
}
   // pausa del textop2
if(estadoTextoP2 == 0){
  yTextoP2 += 6;
   //frena 
 if(yTextoP2 >=420){
 yTextoP2 = 420;
  estadoTextoP2 = 1; 
    tiempoTextoP2 = frameCount;
 }
}
  //espera unos sg
if(estadoTextoP2 == 1){
if(frameCount - tiempoTextoP2 > 240){
      estadoTextoP2 = 2;
    }
}
  //trans final
  if(estadoTextoP2 == 2){
     xTextoP2 += 10;
      xImag5 += 10;

 // cambio d epantalla 
 if(xImag5 >= 640){
  pantalla = 3;
 }
  }
}

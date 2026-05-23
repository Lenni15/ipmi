void pantalla3(){
  background(0);
  image(imag6, 0, yPantalla3, 640, 480);
//imag7
if(estadoImagenP3 >= 1){
  tint(255, op7);
  image(imag7, 0, yPantalla3, 640, 480);
  noTint();
}
//imag8 
if(estadoImagenP3 >= 2){
  tint(255, op8);
  image(imag8, 0, yPantalla3, 640, 480);
  noTint();
}
//imag9
if(estadoImagenP3 >= 3){
  tint(255, op9);
  image(imag9, 0, yPantalla3, 640, 480);
  noTint();
}
//imag10
if(estadoImagenP3 >= 4){
  tint(255, op10);
  image(imag10, 0, yPantalla3, 640, 480);
  noTint();
}
//imag11
if(estadoImagenP3 >= 5){
  tint(255, op11);
  image(imag11, 0, yPantalla3, 640, 480);
  noTint();
}
//imag12
if(estadoImagenP3 >= 6){
  tint(255, op12);
  image(imag12, 0, yPantalla3, 640, 480);
  noTint();
}
//imag13
if(estadoImagenP3 >= 7){
   tint(255, op13);
   image(imag13, 0, yPantalla3, 640, 480);
   noTint();
 }
//texto
  fill(255);
  textFont(miTexto3);
  textAlign(CENTER, CENTER);
  text(textoP3, xTextoP3, yTextoP3 + yPantalla3);
//rebota
if(estadoTextoP3 == 0){
  xTextoP3 += velXTextoP3;
  yTextoP3 += velocidadTextoP3;
//derexha izquierda
if(xTextoP3 >= 540 || xTextoP3 <= 50){
  velXTextoP3 *= -1;
  }
//arriba abajo
if(yTextoP3 >= 430 || yTextoP3 <= 50){
 velocidadTextoP3 *= -1;
}
//inicia tiempo
if(tiempoReboteP3 == 0){
  tiempoReboteP3 = frameCount;
} 
//espera 5seg
if(frameCount - tiempoReboteP3 >= 300){
  estadoTextoP3 = 1;
}
}
// centro
if(estadoTextoP3 == 1 ){
if(xTextoP3 < 320){
  xTextoP3 += 4;
}
if(xTextoP3 >320){
  xTextoP3 -= 4;
}
//vert
if(yTextoP3 < 240){
  yTextoP3 += 4;
}
if(yTextoP3 > 240){
  yTextoP3 -= 4;
}
//cuando llega
if(xTextoP3 >= 300 && xTextoP3 <= 340 && yTextoP3 >= 220 && yTextoP3 <= 260){
  xTextoP3 = 320;
  yTextoP3 = 240;
  estadoTextoP3 = 2;
  tiempoImagenP3 = frameCount;
  estadoImagenP3 = 1;
}
}
//7
if(estadoImagenP3 == 1){
  op7 += 8;
if(frameCount - tiempoImagenP3 >= 90){
  estadoImagenP3 = 2;
  tiempoImagenP3 = frameCount;
 }
}
//8  
if(estadoImagenP3 == 2){
  op8 += 8;
if(frameCount - tiempoImagenP3 >= 90){  
  estadoImagenP3 = 3;
  tiempoImagenP3 = frameCount;
}  
}
//9
if(estadoImagenP3 == 3){
  op9 += 8;
if(frameCount - tiempoImagenP3 >= 90){
 estadoImagenP3 = 4; 
 tiempoImagenP3 = frameCount;
 }  
}
//10
if(estadoImagenP3 == 4){
  op10 += 8;
if(frameCount - tiempoImagenP3 >= 90){
  estadoImagenP3 = 5;
  tiempoImagenP3 = frameCount;
 } 
}  
//11
if(estadoImagenP3 == 5){
 op11 += 8;
if(frameCount - tiempoImagenP3 >= 90){
 estadoImagenP3 = 6;
 tiempoImagenP3 = frameCount;
 } 
}  
//12
if(estadoImagenP3 == 6){
  op12 += 8;
if(frameCount - tiempoImagenP3 >= 90){  
  estadoImagenP3 = 7;
  tiempoImagenP3 = frameCount;
} 
} 
//13
if(estadoImagenP3 == 7){
  op13 += 6;
}
//transicion a 4
if(estadoImagenP3 == 7 && op13 >= 255){
  yPantalla3 += 5;
//imag 14 desde arriba
image(imag14, 0, yPantalla3 - 480, 640, 480);
// cuand term
if(yPantalla3 >= 480){
 pantalla = 4;
}
}
}

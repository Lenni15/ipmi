void pantalla5(){
background(0);
//imag princip
image(imag25, 0, 0, 640, 480);
//imag arriba
tint(255, op26);
image(imag26, 40, 40, 160, 120);
noTint();
tint(255, op27);
image(imag27, 240, 40, 160, 120);
noTint();
tint(255, op28);
image(imag28, 440, 40, 160, 120);
noTint();
//texto
fill(255, opTextoP5);
textAlign(CENTER, CENTER);
textFont(miTexto5);
textSize(tamTextoP5);
text(textoP5, xTextoP5, 300);
//imag aparecen
if(estadoP5 == 0){
  op26 += 4;
  if(op26 >= 255){
  op26 = 255;
  estadoP5 = 1;
  }
}
//imag2
if(estadoP5 == 1){
  op27 += 4;
  if(op27 >= 255){
  op27 = 255;
  estadoP5 = 2;
  }
}
//imag 3
if(estadoP5 == 2){
  op28 += 4;
  if(op28 >= 255){
  op28 = 255;
  estadoP5 = 3;
  }
}
//texto entra
if(estadoP5 == 3){
  xTextoP5 += 6;
  tamTextoP5 += 0.4;
  opTextoP5 += 4;
 if(xTextoP5 >= 320){
  xTextoP5 = 320;
  tamTextoP5 = 24;
  estadoP5 = 4;
  tiempoP5 = frameCount;
 }
}
//espera
if(estadoP5 == 4){
  if(frameCount - tiempoP5 >= 180){
   estadoP5 = 5;
  }
}
//pausa final
if(estadoP5 == 5){
 if(frameCount - tiempoP5 >= 120){
  pantalla = 6;
 }
}















}

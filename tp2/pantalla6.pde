void pantalla6(){
background(0);
//fondo
image(imag29, 0, 0, 640, 480);
//texto arriba
fill(255, opTextoP6);
textAlign(CENTER, CENTER);
textFont(miTexto6);
textSize(tamTextoP6);
text(textoP6, xTextoP6, 120);
//imagenes de abajo
tint(255, op30);
image(imag30, 30, 280, 160, 120);
noTint();
tint(255, op31);
image(imag31, 230, 280, 160, 120);
noTint();
tint(255, op32);
image(imag32, 440, 280, 160, 120);
noTint();
//texto aparece
if(estadoP6 == 0){
xTextoP6 += 6;
tamTextoP6 += 0.4;
opTextoP6 += 4;
if(xTextoP6 >= 320){
  xTextoP6 = 320;
  tamTextoP6 = 24;
  estadoP6 = 1;
}
}
//imag1
if(estadoP6 ==1){
  op30 += 4;
  if(op30 >= 255){
  op30 = 255;
  estadoP6 = 2;
  }
}
// imag2
if(estadoP6 == 2){
 op31 += 4;
 if(op31 >= 255){
  op31 = 255;
  estadoP6 = 3;
 }
}
//iamg 3
if(estadoP6 == 3){
  op32 += 4;
  if(op32 >= 255){
   op32 = 255;
   estadoP6 = 4;
   tiempoP6 = frameCount;
  }
}
//espera
if(estadoP6 == 4){
  if(frameCount - tiempoP6 >= 120){
   pantalla = 7;
  }
}
}

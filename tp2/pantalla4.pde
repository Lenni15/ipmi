void pantalla4(){
background(0);  
if(estadoP4 == 7){
image(imag18, 0, yPantalla4 - 480, 640, 480); 
}
//fond principl
image(imag14, 0, yPantalla4, 640, 480);
//png izq
tint(255, op15);
image(imag15, 40, yImag15 + yPantalla4, 180, 180);
noTint();
//png derechs
tint(255, op16);
image(imag16, 420, yImag16 + yPantalla4, 180, 180);
noTint();
//texto
fill(255, opTextoP4);
textFont(miTexto4);
textAlign(CENTER, CENTER);
text(textoP4, 320, 150 + yPantalla4);
//imag17
if(estadoP4 >= 5){
  tint(255, op17);
  image(imag17, 0, yPantalla4, 640, 480);
  noTint();
}
//entra pantalla
if(estadoP4 == 0){
  yPantalla4 += 5;
if(yPantalla4 >= 0){
  yPantalla4 = 0;
  estadoP4 = 1;
}
}
//png izq baja
if(estadoP4 == 1){
  yImag15 += 4;
  op15 += 4;
if(yImag15 >= 300){
  yImag15 = 300;
  estadoP4 = 2;
  }
}
// png baja derecha
if(estadoP4 ==2){
  yImag16 += 4;
  op16 += 4;
if(yImag16 >= 300){
  yImag16 = 300;
  estadoP4 = 3;
}
}
//texto aparce
if(estadoP4 == 3){
  opTextoP4 += 4;
if(opTextoP4 >= 255){
  opTextoP4 = 255;
  estadoP4 = 4;
  tiempoP4 = frameCount;
}
}
//espera 2 seg 
if(estadoP4 == 4){
  if(frameCount - tiempoP4 >= 120){
  estadoP4 = 5;
}
}  
//imag17 aparece
if(estadoP4 == 5){
  op17 += 4;
if(op17 >= 255){
  op17 = 255;
  estadoP4 = 6;
  tiempoP4 = frameCount;
}
}
//espera final
if(estadoP4 == 6){
  if(frameCount - tiempoP4 >= 180){
    estadoP4 = 7;
  }
}
//todo baja
if(estadoP4 == 7){
  yPantalla4 += 5;
if(yPantalla4 >= 480){
  pantalla = 5;
} 
}
//texto p2
if(estadoP4 >= 6){
fill(255, opTextoP4b);
textFont(miTexto4);  
textAlign(CENTER, CENTER);  
text(textoP4b, 320, yTextoP4b);
//imag arriba 
tint(255, op19);  
image(imag19, 40, y19, 160, 120);
noTint();
tint(255, op20); 
image(imag20, 240, y20, 160, 120);  
noTint();
tint(255, op21);
image(imag21, 440, y21, 160, 120);  
noTint();
//imagenes abajo
tint(255, op22);
image(imag22, 40, y22, 160, 120);  
noTint();
tint(255, op23);
image(imag23, 240, y23, 160, 120);  
noTint();  
tint(255, op24);  
image(imag24, 440, y24, 160, 120);  
noTint();  
//aparecen las imagenes
if(estadoP4b == 0){
//las de arriba suben
  y19 -= 2;
  y20 -= 2;
  y21 -= 2;
//las de abajo bajan
  y22 += 2;
  y23 += 2;
  y24 += 2;
//fade
op19 += 3;
op20 += 3;
op21 += 3;
op22 += 3;
op23 += 3;
op24 += 3;
//posici. finales
if(y19 <= 40){
 y19 = 40;
 y20 = 40;
 y21 = 40;
 y22 = 320;
 y23 = 320;
 y24 = 320;
estadoP4b = 1;
}
}
//texto aparece
if(estadoP4b == 1){
  opTextoP4b += 4;
if(opTextoP4b >= 255){
  opTextoP4b = 255;
  estadoP4b = 2;
  tiempoP4b = frameCount;
}
}
//espera
if(estadoP4b == 2){
  if(frameCount - tiempoP4b >= 180){  
estadoP4b = 3;
  }
}
//salida
if(estadoP4b == 3){
  y19 -= 4;
  y20 -= 4;
  y21 -= 4;
  y22 += 4;
  y23 += 4;
  y24 += 4;
}
}
//trans. p5
if(estadoP4b == 3){
//imagenes arriba suben
y19 -= 4;
y20 -= 4;
y21 -= 4;
//img abajo suben
y22 -= 4;
y23 -= 4;
y24 -= 4;
//texto sube
yTextoP4b -= 4;
//pantalla5 entra desde abajo
image(imag25, 0, yPantalla5, 640, 480);
 yPantalla5 -= 4;
//cambio pant
if(yPantalla5 <= 0){
  yPantalla5 = 0;
  pantalla = 5;
}


















  
  
  
}
}

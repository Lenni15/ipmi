void pantalla7 (){
background(0);
//imagenes
image(imag33, 0, yArribaP7, 640, 240);
image(imag34, 0, yAbajoP7, 640, 240);
//movimiento de transicion
if(estadoP7 == 0){
 yArribaP7 += 4;
 yAbajoP7 -= 4;
//cuando llegan al centro
 if(yArribaP7 >= 0 && yAbajoP7 <= 240){
    yArribaP7 = 0;
    yAbajoP7 = 240;
    estadoP7 = 1;
    }
  }
//texto aparece
if(estadoP7 == 1) {
  opTextoP7 += 4;
   tamTextoP7 += 0.2;
if(opTextoP7 >= 255) {
   opTextoP7 = 255;
   tamTextoP7 = 24;
  }
 }
//texto
fill(255, opTextoP7);
textAlign(LEFT, TOP);
textFont(miTextoP7);
textSize(tamTextoP7);
text(textoP7, 30, 40);
//boton
fill(255);
rect(xBoton, yBoton, anchoBoton, altoBoton, 20);
fill(0);
textAlign(CENTER, CENTER);
textSize(22);
text("REINICIAR LA HISTORIA", xBoton + anchoBoton/2, yBoton + altoBoton/2);
}
void mouseClicked() {
//click dentro del boton
if (mouseX > xBoton &&
    mouseX < xBoton + anchoBoton &&
    mouseY > yBoton &&
    mouseY < yBoton + altoBoton) {
//volver al inicio
pantalla = 1;
//PANTALLA 1
estado = 0;
y = -480;
yChihiro = 480;
xTexto = 320;
yTexto = -200;
opTexto = 0;
//PANTALLA 2
xImag3 = -640;
op4 = 0;
op5 = 0;
yTextoP2 = -100;
estadoTextoP2 = 0;
estadoPantalla2 = 0;
//PANTALLA 3
op7 = 0;
op8 = 0;
op9 = 0;
op10 = 0;
op11 = 0;
op12 = 0;
op13 = 0;
yPantalla3 = 0;
estadoPantalla3 = 0;
estadoTextoP3 = 0;
//PANTALLA 4
yPantalla4 = -480;
yImag15 = -200;
yImag16 = -200;
op15 = 0;
op16 = 0;
op17 = 0;
op18 = 0;
opTextoP4 = 0;
estadoP4 = 0;
//PANTALLA 4B
op19 = 0;
op20 = 0;
op21 = 0;
op22 = 0;
op23 = 0;
op24 = 0;
opTextoP4b = 0;
yTextoP4b = 240;
y19 = 240;
y20 = 240;
y21 = 240;
y22 = 240;
y23 = 240;
y24 = 240;
estadoP4b = 0;
//PANTALLA 5
yPantalla5 = 480;
op26 = 0;
op27 = 0;
op28 = 0;
xTextoP5 = -200;
tamTextoP5 = 5;
opTextoP5 = 0;
estadoP5 = 0;
//PANTALLA 6
estadoP6 = 0;
xTextoP6 = -200;
tamTextoP6 = 5;
opTextoP6 = 0;
op30 = 0;
op31 = 0;
op32 = 0;
//PANTALLA 7
estadoP7 = 0;
yArribaP7 = -240;
yAbajoP7 = 480;
opTextoP7 = 0;
tamTextoP7 = 10;
  }
}

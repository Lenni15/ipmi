//https://youtu.be/NuUtnAUXnMM
PImage imagenOriginal; 
boolean invertir = false; 
int rojo = 255; 
int verde = 255; 
int azul = 255; 
int rojo2 = 0;
int verde2 = 0;
int azul2 = 0;
float angulo = 0;

int[] posX = { 410,415,425,434,442,449,453,456,458,460,461, 462,463,464,464,464,464,464,464,464,464,464,465 }; 
int[] posY = { 0,15,30,40,52,59,67,72,76,79,82, 85,86,87,88,89,91,93,95,97,99,101,100 }; 
int[] ancho = { 370,334,300,265,235,205,184,160,140,120,107, 93,80,69,60,50,43,33,27,18,15,9,7 }; 
int[] alto = { 400,360,320,289,254,225,200,178,160,138,122, 106,93,82,73,61,55,45,38,29,23,18,19 }; 

void setup(){
size(800,400); 
imagenOriginal = loadImage("26.jpg");
} 

void draw(){
if (invertir) {
    background(0);
  } else {
    background(255);
  }

  // Imagen original
  image(imagenOriginal, 0, 0, 400, 400);
  noStroke();
// Distancia del mouse al centro del túnel
  float distancia = dist(mouseX, mouseY, 600, 200);
// Crecimiento
  float crecimiento = 1;
if(mouseX >= 400){
    crecimiento = map(distancia, 300, 0, 1, 1.3);
    crecimiento = constrain(crecimiento, 1, 1.3);
  }
// Dibuja los rectángulos
  for(int i=0; i<posX.length; i++){
    float nuevoAncho = ancho[i] * crecimiento;
    float nuevoAlto = alto[i] * crecimiento;
    float nuevoX = posX[i] - (nuevoAncho - ancho[i]) / 2;
    float nuevoY = posY[i] - (nuevoAlto - alto[i]) / 2;
// Nunca invade la imagen
    if(nuevoX < 400){
      nuevoX = 400;
    }
//rectangulos grande (sin giro)
if(i < 12){
  for(int j=0; j<2; j++){
if(j == 0){
 fill(obtenerColor(i));
 noStroke();
  }else{
noFill();
stroke(120);
strokeWeight(1);
}

rect(
 nuevoX + j,
nuevoY + j,
nuevoAncho - j*2,
nuevoAlto - j*2
        );

      }

    }
//Rectangulos chicos (con giro)
    else{
float centroX = nuevoX + nuevoAncho/2;
float centroY = nuevoY + nuevoAlto/2;
 pushMatrix();
translate(centroX, centroY);
 rotate(radians(angulo));
for(int j=0; j<2; j++){
if(j == 0){
 fill(obtenerColor(i));
noStroke();
   }else{
noFill();
stroke(120);
strokeWeight(1);
 }
 
rect(
-nuevoAncho/2 + j,
-nuevoAlto/2 + j,
nuevoAncho - j*2,
nuevoAlto - j*2
        );
}
popMatrix();
    }
  }
}

void mousePressed(){

if(mouseX >= 400){

// Colores aleatorios
rojo = int(random(256));
verde = int(random(256));
azul = int(random(256));
rojo2 = int(random(256));
verde2 = int(random(256));
azul2 = int(random(256));
// Gira un poco los cuadrados internos
angulo += 10;
}
}
// Función con parametros (no retorna)
void dibujarRectangulo(int x, int y, int anchoRect, int altoRect){
   rect(x, y, anchoRect, altoRect);
}
// Función con parámetros (retorna un color)
color obtenerColor(int i){
if(i % 2 == 0){
   return color(rojo, verde, azul);
  }else{
   return color(rojo2, verde2, azul2);
  }
}

void keyPressed(){

if(key == 'r' || key == 'R'){

// Colores originales
rojo = 0;
verde = 0;
azul = 0;
rojo2 = 255;
verde2 = 255;
azul2 = 255;
// Vuelve la rotación al inicio
angulo = 0;
  }
}

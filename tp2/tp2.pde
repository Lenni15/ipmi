//variables pantalla 1
PImage imag1, imag2;
int miVariable = 1000;
int y;
int yChihiro;
int estado = 0;
float opTexto = 0;
float velocidadTexto = 0;
float xTexto = 320;
float yTexto = -200;
PFont miTexto1;
String tituloIntro = "El viaje de Chihiro es una pelicula animada por Hayao Miyazaki, \n Cuenta la historia de Chihiro, una niña que entra\n en un mundo magico lleno de espiritus, \n criaturas extrañas y desafio.";
//Variables pantalla 2
PImage imag3, imag4, imag5;
float xImag3 = -640;
float xImag5 = 0;
float op4 = 0;
float op5 = 0;
float velocidad = 3;
//texto p2
PFont miTexto2;
String textoPantalla2 = "Mientras chihiro viaja con sus \n padres, se encuentran con un misterioso \n tunel abandonado.\n Al cruzarlo, llegan a un extraño mundo espiritual.";
//MOV TEXTO P2
float xTextoP2 = 320;
float yTextoP2 = -100;
int estadoTextoP2 = 0;
int tiempoTextoP2;
//control de pantallas
int estadoPantalla2 = 0;
int tiempoPantalla2;
//contr general
int pantalla = 1;
//variables pantalla 3
PImage imag6, imag7, imag8, imag9, imag10, imag11, imag12, imag13;
int op7 = 0;
int op8 = 0;
int op9 = 0;
int op10 = 0;
int op11 = 0;
int op12 = 0;
int op13 = 0;
int estadoImagenP3;
int tiempoImagenP3;
float yPantalla3 = 0;
int estadoPantalla3 = 0; 
//texto p3
String textoP3 = "Al llegar al pueblo, sus padres,\n ven un local con comida preparada\n para los espiritus del lugar. Poco \n a poco comienzan a transformarse en\n cerdos frente a chihiro. ";
float xTextoP3 = 320;
float yTextoP3 = 240;
float velXTextoP3 = 3;
float velocidadTextoP3 = 2;
int estadoTextoP3 = 0; 
int tiempoReboteP3= 0;
PFont miTexto3;
//pantalla 4
PImage imag14, imag15, imag16, imag17, imag18;
//p1 texto
String textoP4 = "Al ver a sus padres, chihiro corrio a\n buscarlos ya que creia que era un sueño.\n Se rindio y empezo a notar que se\n estaba desapareciendo hasta que Haku aparece y\n la ayuda a que no suceda.";
PFont miTexto4;
//posiciones v
float yPantalla4 = -480;
//pngs
float yImag15 = -200;
float yImag16 = -200;
//opacidad p4
int op15 = 0;
int op16 = 0;
int op17 = 0;
int op18 = 0;
//texto
int opTextoP4 = 0;
//tiempo
int tiempoP4; 
int estadoP4 = 0;
//parte dos pantalla4 
PImage imag19, imag20, imag21, imag22, imag23, imag24;
String textoP4b = "Ambos corren a buscar un lugar seguro, mientras\n que Haku hechizo a chihiro para que sea\n invisible a la vista de los animales\n y fantasmas. Pero debia aguantar la respiracion para\n que funcione. Mientras pasan por un puente lleno de\n animales y fantasmas.";
int op19 = 0;
int op20 = 0;
int op21 = 0;
int op22 = 0;
int op23 = 0;
int op24 = 0;
int opTextoP4b = 0;
float yTextoP4b = 240;
//posici. arriba
float y19 = 240;
float y20 = 240;
float y21 = 240;
//posici, abaj
float y22 = 240;
float y23 = 240;
float y24 = 240;
int estadoP4b = 0;
int tiempoP4b;
//pantalla 5
PImage imag25, imag26, imag27, imag28;
String textoP5 = "Para salvar a sus padres, Chihiro tendra que\n trabajar en una enorme casa de baños para\n espiritus, construida por la poderosa Yubaba.";
PFont miTexto5;
//mov entrada pantalla
float yPantalla5 = 480;
//opacidad im
int op26 = 0;
int op27 = 0;
int op28 = 0;
//texto
float xTextoP5 = -200;
float tamTextoP5 = 5;
int opTextoP5 = 0;
//estados
int estadoP5 = 0;
//tiempo 
int tiempoP5;
//Pantalla 6
PImage imag29, imag30, imag31, imag32;
String textoP6 = "Con la ayuda de Haku, chihiro aprende a\n enfrentar sus miedos. En su viaje descubre\n la amistad, valentia y\n el verdadero significado de la identidad";
PFont miTexto6;
int estadoP6 = 0;
int tiempoP6;
//texto
float xTextoP6 = -200;
float tamTextoP6 = 5;
int opTextoP6 = 0;
int op30 = 0;
int op31 = 0;
int op32 = 0;
//PANTALLA 7
PImage imag33, imag34;
String textoP7 = "Finalmente, chihiro logra liberar a sus padres\n y regresar al mundo real.\n \n ¿Deseas volver a la hitoria?";
PFont miTextoP7;
//estados
int estadoP7 = 0;
int tiempoP7;
//mov im
int yArribaP7 = -240;
int yAbajoP7 = 480;
//texto
int opTextoP7 = 0;
float tamTextoP7 = 10;
//boton
int xBoton = 180;
int yBoton = 390;
int anchoBoton = 280;
int altoBoton = 50;
int inicioP1;

void setup() {
  size(640, 480);
  imag1 = loadImage ("01image.jpg");
  println(miVariable);
  y = -480;
  imag2 = loadImage ("01chihirocara.png");
  yChihiro = -190;
  //fuente p1
  miTexto1 = createFont("Tahoma Bold", 20);
  //fuent p2
  miTexto2 = createFont("Dubai Bold", 28);
  //imagenes pantalla2
  imag3 = loadImage("02tunel.jpg");
  imag4 = loadImage("02famTunel.jpg");
  imag5 = loadImage("02pueblo.jpg");
  //imagenes pantalla3
  imag6 = loadImage("03padres.jpg");
  imag7 = loadImage("03puente1.jpg");
  imag8 = loadImage("03puente2.jpg");
  imag9 = loadImage("03puente3.jpg");
  imag10 = loadImage("03haku.jpg");
  imag11 = loadImage("03huye.jpg");
  imag12 = loadImage("03padrecerdos.jpg");
  imag13 = loadImage("03susto.jpg");
  //fuente p3
  miTexto3 = createFont("Tahoma Bold", 25);
  //Pantalla 4
  imag14 = loadImage("04trnsparente.jpg");
  imag15 = loadImage("04transpa2.png");
  imag16 = loadImage("04transpa3.png");
  imag17 = loadImage("04hakubuscachihiro.jpg");
  imag18 = loadImage("04hakuayuda.jpg");
  //fuente p4
  miTexto4 = createFont("Tahoma Bold", 20);
  //pantalla4 p2
  imag19  = loadImage("04hakuayuda2.jpg");
  imag20  = loadImage("04puente.jpg");
  imag21  = loadImage("04puente2.jpg");
  imag22  = loadImage("04puente3.jpg");
  imag23  = loadImage("04descubiertos.jpg");
  imag24  = loadImage("04corre.jpg");
  //pantalla5
  imag25 = loadImage("05trabajo4.jpg");
  imag26 = loadImage("05trabajo.jpg");
  imag27 = loadImage("05trabajo2.jpg");
  imag28 = loadImage("05trabajo3.jpg");
  miTexto5 = createFont("Tahoma Bold", 24);
  //pantalla6
  imag29 = loadImage("06fondo.jpg");
  imag30 = loadImage("06chihiro.jpg");
  imag31 = loadImage("06Hakuchihiro.jpg");
  imag32 = loadImage("06pueblo.jpg");
  miTexto6 = createFont("Tahoma Bold", 24);
  //pantalla 7
  imag33 = loadImage("07fin.jpg");
  imag34 = loadImage("07fin2.jpg");
  miTextoP7 = createFont("Tahoma Bold", 24);
}
void draw() {
  //pantalla1
  if (pantalla == 1) {
    pantalla1 ();
  }
  if (pantalla == 2) {
    pantalla2 ();
  }
  if(pantalla == 3){
     pantalla3 ();
  }
  if(pantalla == 4){
    pantalla4 ();
  }
  if(pantalla == 5){
    pantalla5 ();
  }
  if(pantalla == 6){
    pantalla6 ();
  }
  if(pantalla == 7){
    pantalla7 ();
  }
  }

PImage miImagen; 

void setup(){
  size (800,400);
  miImagen=loadImage("Los secretos de La joven de la perla de Vermeer.jpg");
}

void draw (){
  background(20);
image(miImagen,0,0,400,400);
//mouse coordenadas.
fill(255,3,3);
  text("X: " + mouseX + " Y: " + mouseY, mouseX + 10, mouseY + 10);
  
  //arriba del pañuelopt1
  fill(241,218,174);
   stroke(130,115,94);
  ellipse(576,79,150,150);
  
  //arriba del pañuelopt2
fill(241,218,174);
stroke(130,115,94);
ellipse(552,100,170,170);

  //cabeza
        fill(240,210,180);
        ellipse(530,141,200,180);
        
   //pañuelo
  fill(148,184,216);
  rect(441,45,100,70);
  //pañuelopt2
  fill(52,62,87);
  rect(540,45,95,70);
  //pañuelopt3
  fill(52,62,87);
  triangle(540,114,634,113,629,167);
  
  //tela larga1
  fill(228,208,138);
  stroke(36,26,14);
  triangle(629,45,674,279,704,276);
  //tela larga2
  fill(228,208,138);
  stroke(36,26,14);
  triangle(629,45,695,249,720,250);
  //tela larga4
   fill(126,138,150);
   stroke(65,66,71);
   triangle(642,73,718,246,770,228);
   
  //tela larga3
  fill(126,118,97);
   stroke(36,26,14);
   triangle(629,45,683,118,668,134);
   
   //punta d ela tela
  fill(104,123,137);
  rect(672,270,36,50);
  //punta d ela tela2
  fill(104,123,137);
  noStroke();
  rect(695,249,28,40);
   //punta d ela tela3
   fill(205);
  stroke(0);
  rect(716,230,60,45);
 
 //carapt1
  fill(240,210,180);
  noStroke();
  ellipse(500,195,110,80);
 
  //cuello
  rect(518,186,80,100);
  //sombra del cuello
  fill(89,68,51);
  noStroke();
  triangle(518,236,596,251,594,214);
  //labio s
fill(180, 60, 70);
  noStroke();
 beginShape();
  vertex(491, 203);
  bezierVertex(456, 187, 476, 187, 537, 203);
  bezierVertex(476, 192, 456, 192, 491, 203);
  endShape(CLOSE);
  //labio i
  fill(220, 110, 120);
  beginShape();
  vertex(491, 210);
  bezierVertex(456, 212, 476, 212, 537, 203);
  bezierVertex(476, 202, 456, 202, 491, 203);
  endShape(CLOSE);
  
   //parte de la nariz.
  fill(160,118,93);
  noStroke();
triangle(487,135,469,173,490,175);
  
  //ojo izquierdo
  fill(255);
  ellipse(453,134,30,13);
  //ojo derecho
  ellipse(521,143,30,13);
  
  //cuerpo
  fill(150,120,80);
  
  //CUERPO pt1
  ellipse(570,345,220,190);
  ellipse(530,345,210,150);
  
  //iris d
  stroke(0);
  fill(127,114,108);
  ellipse(528,143,10,12);
  //iris i
  ellipse(460,134,12,12);
  
  //pupila d
  fill(0);
  ellipse(530,142,7,6);
  //pupila i
  ellipse(462,134,7,6);
   
  //cuello parte blanca
  fill(255);
  noStroke();
  rect(476,255,175,20);
  
  //oreja
  fill(104,78,63);
  noStroke();
  ellipse(617,179,10,50);
  
  //la perla
  fill(123,112,106);
  stroke(34);
  ellipse(600,225,30,30);
  
  //reflejo de la perla c. blanco
  fill(250);
  noStroke();
  ellipse(589,221,12,10);
  
//mouse coordenadas
  fill(255,3,3);
  text("X: " + mouseX + " Y: " + mouseY, mouseX + 10, mouseY + 10);

}
                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

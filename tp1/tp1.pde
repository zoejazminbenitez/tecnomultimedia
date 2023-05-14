//Zoe Jazmin Benitez
//Legajo 95511/8
//Comision 1 
PImage imagen1, imagen2, imagen3, imagen4; //Imagenes
PFont mifuente; //Fuente de textos 1
PFont mifuente2; //Fuente de textos 2
String pantalla; 
int cuenta;
float pos, tama;
float velocidadmenos;
float velocidadmas;
float posY, poss;

void setup() {
  size(640, 480);
  pantalla = "inicio";
  cuenta = 0;
  pos = height;
  tama = 25;
  velocidadmenos = -1.5;
  velocidadmas = 0.5;
  posY = 480;
  poss = 480;
  mifuente=loadFont("mifuente.vlw");
  mifuente2=loadFont("f.vlw");
  textAlign(CENTER);
  imagen1 = loadImage("image1.jpg");
  imagen2 = loadImage("image2.jpg");
  imagen3 = loadImage("image3.jpg");
  imagen4 = loadImage("image4.jpg");
}

void draw() {
  background(0);
  cuenta++;
  
  // Pantalla 1
  if (pantalla.equals("inicio")) {
    image(imagen1, 0, 0, width, height);
    
    // Texto
    textFont(mifuente);
    textSize(38);
    fill(255, 255, 100);
    textAlign(CENTER);
    text("La Boca", width/2, pos);
    textSize(22);
    text("El barrio más colorido y pintoresco de Buenos Aires", width/2, pos + 38);
    
    // Movimiento del texto
    pos += velocidadmenos;
    if (pos < height/2) {
      pos = height/2;
      velocidadmenos = 0;
    }
    
    if (cuenta >= 180) { //Cambio de pantalla a 2
      pantalla = "segunda";
      cuenta = 0;
    }
  }
// Pantalla 2
else if (pantalla.equals("segunda")) {
  image(imagen2, 0, 0, width, height);

  // Texto
  
  textSize(26);
  fill(53, 55, 118);
  textAlign(CENTER);
  text("Caminito es un callejón, museo y un pasaje,", width/2, pos);
  textSize(24);
  text("de gran valor cultural y turístico,\nhermoso para visitar y explorar", height/2, pos + 40);

  // Movimiento del texto
  pos -= velocidadmas;
  if (pos < height/3) {
    pos = height/3;
    velocidadmas = 0;
  }

  if (cuenta >= 180) { // Cambio de pantalla a 3
    pantalla = "tercera";
    cuenta = 0;
  }
}


// Pantalla 3
else if (pantalla.equals("tercera")) {
  image(imagen3, 0, 0, width, height);

  // Texto
  textFont(mifuente2);
  textAlign(CENTER);
  textSize(22);
  fill(17, 1, 93);
  text ("El museo alberga una amplia colección de obras de arte de Quinquela Martín y\notros artistas de la Boca, incluyendo pinturas, dibujos, grabados y esculturas.\nTambién cuenta con salas de exposiciones temporales, biblioteca, archivo y\ntalleres de arte.",  width/2, posY, 320, 480);
  if (posY>width/10) {
      posY --;
    }  
if (cuenta >= 450) { // Cambio de pantalla 4
pantalla = "cuarta";
cuenta = 0;

}
} 

// Pantalla 4
else if (pantalla.equals("cuarta")) {
image(imagen4, 0, 0, width, height);
if (cuenta >= 180) { // Cambio de pantalla final
pantalla = "final";
cuenta = 0;

}
fill(255, 0, 0);
textSize(17);
textAlign(CENTER);
text("La Bombonera \n es el corazón de Boca Juniors,\n y uno de los estadios más famosos del mundo, \n gracias a la fiesta que se vive allí durante cada partido.\n Este se encuentra ubicado en el barrio de La Boca\n en la ciudad de Buenos Aires, Argentina", 280, 150);
}

// Pantalla final
else if (pantalla.equals("final")) {
 
  textAlign(CENTER);
  textSize(20);
  fill(255);
  text("Fin de la presentación de Zoe Jazmin Benitez \n espero que le haya agradado", width/2, height/2 - 32);
  textSize(16);
  text("Presiona el botón para reiniciar", width/2, height/2 + 16);
  if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 32 && mouseY < height/2 + 64) {
    fill(200);
  } else {
    fill(255);
  }
  rect(width/2 - 50, height/2 + 32, 100, 32, 8);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Reiniciar", width/2, height/2 + 48);
}
}
//Boton de reinicio 
void mousePressed() {
  if (pantalla.equals("final")) {
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 32 && mouseY < height/2 + 64) {
      pantalla = "inicio";
      cuenta = 0;
    }
  }
}

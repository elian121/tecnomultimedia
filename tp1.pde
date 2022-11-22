String mitexto = "mi texto";
PFont miTipografia; 
int Y =200;
int Y2 =800;
int Y3 =800;
int Y4 =800;
int Y5 =800;
int pantalla;
int X1=200;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PFont fuente;

String estado;
void setup() {
  size(800, 800);
  
  fuente = loadFont("YuGothicUI-Regular-48.vlw");
  textFont(fuente);
 
  
  estado = "inicio";
  img1 = loadImage ("super.png");
  img2 = loadImage ("estrella.png");
  img3 = loadImage ("tubo.png");
  img4 = loadImage ("flor.png");
  img5 = loadImage ("fungi.png");
  img6 = loadImage ("tubo2.png");
  img7 = loadImage ("piraña.png");
 

  
}



void draw() {
background(255,0,0);
 
 textFont(fuente);
  println(pantalla);
  //para texto y movimiento
  if (pantalla==0) {
    image(img1, 185,50,500,500);
    
    fill(255);
    rect(290,550,250,80);
    textSize(35);
    textAlign(CENTER);
    
    fill(0);
    text("Empezar", 220, 570, 400, 400);
    
    
    //ayuda cuando termina el texto para pasar a otra pantalla
    if (estado== "pantalla") {  
       pantalla=1;
    }
  } else if (pantalla==1) {
     image(img3, 0,0,170,800);
      image(img3, 630,0,170,800);
    
    textSize(CENTER);
    textSize(35);
    fill(250);
    textFont(fuente);
    
    text(" es un videojuego de plataformas y aventuras, diseñado por Shigeru Miyamoto, lanzado el 13 de septiembre de 1985 y producido por la compañía Nintendo para Nintendo Entertainment System (NES).", X1, Y2, 400, 600);
    Y2=Y2-4;
    image(img4, 345,Y2+625,100,100);
    
    if (Y2<-700) {
      Y= pantalla=2;
    }
  } else if (pantalla==2) {
    image(img3, 0,0,170,800);
      image(img3, 630,0,170,800);
    
    textSize(CENTER);
    textSize(50);
    fill(250);
    textFont(fuente);
    
    text("Descripcion", X1, Y3, 400, 400);
    textSize(35);
    text("El juego describe las aventuras de dos fontaneros, Mario y Luigi, quienes deben rescatar a la Princesa Peach, quién fue secuestrada por el rey de los Koopas, Bowser y salvar al Reino Champiñón de este mismo. A través de ocho diferentes niveles de juego, los jugadores pueden controlar a uno de los dos hermanos y deben enfrentarse finalmente a cada uno de los enemigos de cada castillo para liberar a la Princesa Peach. ", X1, Y3+75, 400, 400);
    Y3=Y3-4;
    
    image(img5, 345,Y3+500,100,100);

    if (Y3<-800) {
      Y= pantalla=3;
    }
  } else if (pantalla==3) {
    image(img3, 0,0,170,800);
      image(img3, 630,0,170,800);
    
    textSize(CENTER);
    textSize(50);
    fill(250);
    textFont(fuente);
    
    text("Historia", X1, Y4, 400, 400);
    textSize(35);
    text("Un día, el reino de la pacífica gente hongo fue invadido por Koopa, una tribu de tortugas famosas por su magia oscura. La silenciosa y pacífica gente hongo se convirtieron en simples piedras, ladrillos e incluso en plantas de pelo de caballo, y el Reino Champiñón cayó en la ruina. El único que puede deshacer el hechizo mágico en Mushroom People y devolverlos a su estado normal es la Princesa Toadstool, la hija del Rey Champiñón. Desafortunadamente, ella está actualmente en manos del gran rey de las tortugas Koopa. Mario, el héroe de esta historia (tal vez) escucha acerca de la difícil situación de la gente hongo y se embarca en una misión para liberar a la Princesa Toadstool del malvado Koopa y restaurar el reino caído de la gente hongo. ¡Eres Mario! ¡Depende de ti salvar a la gente hongo de la magia oscura de Koopa!", X1, Y4+75, 400, 2400);
    Y4=Y4-4;
    
    image(img7, 345,Y4+1800,100,100);

    if (Y4<0-2600) {
      Y= pantalla=4;
    }
  } else if (pantalla==4) {
    
    textSize(CENTER);
    textSize(25);
    fill(250);
    textFont(fuente);
    text("Elian Passero  Legajo:81693/8 TODA INFORMACION FUE SACADA EN WIKIPEDIA", 75, 200, 400, 400);
    
    
    
    rect(600,350,190,120);
     textSize(CENTER);
     textSize(50);
    fill(0);
    text("Volver",700,450);
  // hubicacion X hubicacion Y
  
  image(img2, 500,370,75,75);
  image(img6, -90,-50,890,250);
      image(img6, -90,500,890,250);
  
     
  } 
}
 void mousePressed(){
 if (pantalla ==0 &&(mouseX>290 && mouseX<290+250 && mouseY>550 && mouseY<550+80)) {  pantalla=1;} else if 
 (pantalla ==4 &&(mouseX>600 && mouseX<600+190 && mouseY>350 && mouseY<350+1200)) {  pantalla=0;}
 
 } 

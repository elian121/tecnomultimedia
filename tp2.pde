String mitexto = "mi texto";
PFont miTipografia; 
int Y =800;
int Y2 =800;
int Y3 =800;
int Y4 =800;
int Y5 =800;
int pantalla=0;
int X1=400;
int X2=0;
PImage img;
PImage img2;
PImage img3;
PImage img4;
void setup() {
  size(800, 800);
  img = loadImage("logo.png");
  img2 = loadImage("clones1.jpg");
  img3 = loadImage("clones2.jpg");
  img4 = loadImage("clones3.jpg");

  miTipografia = loadFont("Serif.italic-48.vlw");
  textFont(miTipografia);
}



void draw() {


  println(pantalla);
  //para texto y movimiento
  if (pantalla==0) {
    background(0);
    textAlign(CENTER);
    textSize(50);
    fill(250);
    image(img, 75, Y);

    text("Un Breve Informacion Sobre Los Clones", 220, Y+400, 400, 400);
    Y=Y-4;
    //ayuda cuando termina el texto para pasar a otra pantalla
    if (Y<-900) {  
      Y= pantalla=1;
    }
  } else if (pantalla==1) {
    background(0);
    textSize(CENTER);
    textSize(35);
    fill(250);
    image(img2, 400, 10, 800, 800);
    text("Los Clone Troopers o Soldados Clones del Gran Ejército de la República son los soldados, en el universo ficticio de Star Wars, clonados a partir de Jango Fett, un cazarrecompensas que fue adoptado y entrenado por mandalorianos en su niñez. Aparecieron por primera vez en Star Wars Episodio II: El Ataque de los Clones, y reaparecen en Star Wars Episodio III: La Venganza de los Sith, donde son interpretados por Temuera Morrison. En los dos programas de televisión, que son la voz de André Sogliuzzo y Dee Bradley Baker. En estas películas, soldados clon componían el grueso del Ejército de la República durante la Guerra de los Clones. Se presenta como la parte principal de las fuerzas armadas de la República Galáctica en sus últimos años, convirtiéndose en uno de los ejércitos más grandes jamás reunido, aunque superado por el Ejército Droide Separatista. Después de las Guerras Clon, pasaron a ser conocidos como Stormtroopers o Soldados Imperiales, que es el núcleo de las fuerzas armadas del Imperio Galáctico. Usaban rifles Blaster y ametralladoras de cañones rotativos Z-6.", X2, Y2, 400, 1900);
    Y2=Y2-4;
    if (Y2<-2100) {
      Y= pantalla=2;
    }
  } else if (pantalla==2) {
    background(0);
    textSize(CENTER);
    textSize(50);
    fill(250);
    image(img3, 0, 10, 400, 800);
    text("Descripcion", X1, Y3, 400, 400);
    textSize(35);
    text("Los soldados clones son presentados dentro del universo Star Wars vistiendo armaduras blancas. Son la base del ejército de la República Galáctica siendo el ejército más organizado y efectivo en sus misiones.", X1, Y3+75, 400, 400);
    Y3=Y3-4;

    if (Y3<-800) {
      Y= pantalla=3;
    }
  } else if (pantalla==3) {
    background(0);
    textSize(CENTER);
    textSize(50);
    fill(250);
    image(img4, 400, 10, 800, 800);
    text("Historia", X2, Y4, 400, 400);
    textSize(35);
    text("Fueron creados por los clonadores del planeta Kamino a partir de la muestra de sangre del cazarrecompensas Jango Fett. Fueron alterados genéticamente para ser más dóciles y obedecer cualquier orden sin cuestionarla, y se les aplicó una aceleración de crecimiento permitiéndoles alcanzar una edad adulta en la mitad de tiempo que lo haría un ser humano normal. Los clones sirvieron como arma principal durante las batallas que surgieron por toda la galaxia, denominadas Guerras Clon. Entre las batallas importantes podemos encontrar: Geonosis, Muunilinst, Mon Calamari, Dantooine o Hypori. Los clones, servían a la República, y en última instancia a su líder, el canciller supremo. Así, tras el descubrimiento de la verdad por parte de los jedis y el intento de asesinato de éste, por parte de Mace Windu, el Canciller dio la orden de acabar con todos los Jedi, ejecutando la Orden 66 a través de los chips que se habían implantado en los clones en su etapa embrionaria, la cual dictaminaba que todos y cada uno de los Jedi eran ahora enemigos de la República. Así comenzó la exterminación de los Jedi a través de la galaxia. A lo largo de las Guerras Clon ciertos clones se distinguieron por encima de los otros, y sus generales Jedi terminaron por colocarles nombres o apodos como aprecio en favor de la camaradería.", X2, Y4+75, 400, 2400);
    Y4=Y4-4;

    if (Y4<0-2600) {
      Y= pantalla=4;
    }
  } else if (pantalla==4) {
    background(0);
    textSize(CENTER);
    textSize(50);
    fill(250);
    text("Elian Passero  Legajo:81693/8 TODA INFORMACION FUE SACADA EN WIKIPEDIA", 200, Y5, 400, 400);
    Y5=Y5-6;
    
    rect(550,550,250,120);
     textSize(CENTER);
     textSize(50);
    fill(0);
    text("Volver",625,625);
  // hubicacion X hubicacion Y
  
     
  } 
  if (Y5<250) {
    Y= pantalla=5;
    if((mouseX>550 & mouseX<800 && mouseY>550 & mouseY<670)&(mousePressed==true)){
  pantalla=0;};
  }
}

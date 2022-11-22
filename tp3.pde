/*passero elian 81693/8
gonzalez martina 88141/9
TP3 com 3
video:https://www.youtube.com/watch?v=0bzaiXJ6ZsY&ab_channel=ElianPassero*/
int mov, mov2, pantalla = 0;

PImage flor1, flor2, conejito, tortuga;

//esto es arreglo
float x[], y[], vx[], vy[];
int n = 20;
float r = 25;
float x0 =25;
float y0 = 20;
//distancia
float w = 950;
float h = 600;
void setup() {
  size(1000, 600);
  loadImage("flor1.png", "flor2.png");
  flor1=loadImage("flor1.png");
  flor2=loadImage("flor2.png");
  conejito=loadImage("conejito.png");
  tortuga=loadImage("tortuga.png");
  
  //lo declaramos el arreglo
  x =new float[n];
  y =new float[n];
  vx =new float[n];
  vy =new float[n];
  for (int i = 0; i<n; i++) {
  x[i] = random(x0+r, x0+w-r);
  y[i] = random(y0+r, y0+w-r);
  vx[i] = random(-2,2);
  vy[i] = random(-2,2);
  circle(x[i],y[i],2*r);
  }
}

void draw() {

  if (pantalla == 0) {
    pantalla0();
  }

  if (pantalla == 1) {

    figurasCarrera();
    if ( mov2 >= 1050) {
      pantalla=2;
    }
    if (mov >= 1050) {
      pantalla=3;
    }

    for (int i = 1; i <=7; i ++) {

      flor1.resize(80,80);
      flor2.resize(80,80);
      image(flor1,i*100, 50, 50, 50);
      image(flor2,i*100, 500, 50, 50);
    }
  }

  if ( pantalla==2 ) {
    dibujarGanaste();
  }
  if ( pantalla==3 ) {
    dibujarPerdiste();
  }
}


void dibujarGanaste() {
  background(0, 255, 0);
   //agregamos los confite de los ganadores
  for(int i= 0;i<n; i++){
   x[i] = x[i] +vx[i];
   y[i] = y[i] + vy[i];
   if (y[i]+r > h+y0){
   y[i] = h +y0 -r;
   vy[i] = -vy[i];
   }
   if (y[i]-r < y0){
   y[i] = y0 +r;
   vy[i] = -vy[i];
   }
   if (x[i]+r > w+x0){
   x[i] = w +x0 -r;
   vx[i] = -vx[i];
   }
   if (x[i]-r < x0){
   x[i] = x0 +r;
   vx[i] = -vx[i];
   }
   
   circle(x[i],y[i],2*r);
   fill(0);
   }
  
  
  fill(255);
  rect(350, 450, 280, 80);
  textSize(50);
  fill(0);
  text("volver", 400, 500);

  textSize(100);
  fill(255);
  text("Ganaste", 325, 200);
  
  tortuga.resize(200,200);
  image(tortuga,400,200);
}

void dibujarPerdiste() {
  background(0, 0, 255);
  //agregamos los confite de los ganadores
  for(int i= 0;i<n; i++){
   x[i] = x[i] +vx[i];
   y[i] = y[i] + vy[i];
   if (y[i]+r > h+y0){
   y[i] = h +y0 -r;
   vy[i] = -vy[i];
   }
   if (y[i]-r < y0){
   y[i] = y0 +r;
   vy[i] = -vy[i];
   }
   if (x[i]+r > w+x0){
   x[i] = w +x0 -r;
   vx[i] = -vx[i];
   }
   if (x[i]-r < x0){
   x[i] = x0 +r;
   vx[i] = -vx[i];
   }
   
   circle(x[i],y[i],2*r);
   fill(0);
   }
  
  fill(255);
  rect(350, 450, 280, 80);
  textSize(50);
  fill(0);
  text("volver", 400, 500);

  textSize(100);
  fill(255); 
  text("Perdiste", 325, 200);
  
  conejito.resize(200,200);
  image(conejito,400,200);
}

void figurasCarrera() {
  mov+=5;
  pantalla = 1;
  background(202, 164, 114);

  //fondo de la carrera(pasto)
  fill(0, 187, 45);
  rect(0, 0, 1000, 150);
  rect(0, 250, 1000, 100);
  rect(0, 450, 1000, 150);

  //la meta
  fill(255);
  rect(900, 0, 100, 600);

  fill(0);
  //competidores
  conejito.resize(100,100);
  image(conejito,mov,155);
  //rect(mov, 175, 50, 50);

tortuga.resize(100,100);
  image(tortuga,mov2,350);
  //circle(mov2, 400, 50);
}
void pantalla0() {
  pantalla=0;
  background(200, 100, 250);
  fill(255);
  textSize(70);
  text("Rabbit VS Tortoise", 200, 250);
  pushStyle();
  textSize(25);
  text("¡Manten presionado la tecla espacio para mover a la tortuga e intenta ganarle al conejo!",100,70,900,500);
 popStyle();
  rect(350, 450, 280, 80);
  textSize(40);
  fill(0);
  text("empezar", 400, 500);
  
  tortuga.resize(200,200);
  image(tortuga,550,250);
  
   conejito.resize(200,200);
  image(conejito,250,250);
}

void keyPressed() {

  mov2+=15;
}
void mousePressed() {

  if (pantalla ==0 &&(mouseX>350 && mouseX<350+280 && mouseY>450 && mouseY<450+80)) {

    pantalla = 1;
    mov=0;
    mov2=0;
  } else if (pantalla ==2 &&(mouseX>350 && mouseX<350+280 && mouseY>450 && mouseY<450+80)) {

    pantalla = 0;
  } else if (pantalla ==3 &&(mouseX>350 && mouseX<350+280 && mouseY>450 && mouseY<450+80)) {

    pantalla = 0;
  }
}

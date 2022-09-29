/*passero elian 81693/8
gonzalez martina 88141/9
TP4 com 3
video:https:https://www.youtube.com/watch?v=X5a_nkzcImo&ab_channel=ElianPassero*/

PImage conejito;

conejito damian;
int cantX=2;
float [] tono;
//agregamos las nubes en este codigo
//practica sin arrays
/*nubecita minube;
nubecita minube1;
nubecita minube2;*/

//arrays
nubecita[] nubes = new nubecita[5];

void setup(){
  size(400,400);
  conejito=loadImage("conejito.png");
  
  damian = new conejito();
  tono= new float [10];
  
  //declaramos minube
  //practica sin arrays
/* minube = new nubecita(color(250), 100,10,2);
  minube1 = new nubecita(color(250), 50,50,4);
   minube2 = new nubecita(color(250), 150,20,1);*/
   for(int i = 0; i < nubes.length; i++){
   nubes[i] = new nubecita(color(255),random(10,150), i*height/nubes.length,random(2,6));
   }
 
}

void draw(){
  
 
 
  float modX= (float) width/cantX;
  for (int a=0;a<cantX;a++){
    background(tono [a]);
  }
  for (int a=0;a<cantX;a++){
    tono [a]++;
    if (tono [a]>255){
      tono [a]=0;
    }
    //lo combocamos para funcione la animacion
    //practica sin arrays
   /* minube.drive();
    minube.display();
    //nube2 y 3
     minube1.drive();
    minube1.display();
    
     minube2.drive();
    minube2.display();*/
    for(int i = 0; i < nubes.length; i++){
    nubes[i].drive();
    nubes[i].display();
    }
    
    
     fill (0,255,0);
    rect (0, 220, 400, 250);
    
     damian.mover();
  damian.dibujar();

}
}

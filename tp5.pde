/*
tp 5 
comision 3 Mar 14 a 16hs
prof. David Bedoian
Alumnos:
    Trebino Delfina 79304/9
    León Jesús 91602/3
    Passero Elian 81693/8
    
    youtube: https://youtu.be/tmTLl0GI00c
*/
ArrayList <Juego> game;
float agregarObj2;
int pantalla=0;
//OBSTACULOS
ArrayList <Objetos> cosas;
int secuencia= 5; 
float agregarObj;
//VIDAS
//pasan 15frames por cda colision, X3 vidas son 45
int vida=45;

// GATO
ArrayList <Gatito> nave;
 int secuencia1= 5; 
  float agregarObj1;
  float Gposx =300;
  float Gposy =500;
  float Gtam=115;
  float Gtam1=200;
 
//PLANET
float contador=-1500;

import ddf.minim.*;
Minim minim;
AudioPlayer misonido;
int M=1;

PImage aster;
PImage inicio;
PImage asterblue;
PImage planet;
PImage fondo;
PImage instrucciones;
PImage heart;
PImage cartel;
PImage boton;
PImage win;
PImage lose;
PImage[] sound= new PImage [2];
PFont fuente;
PFont fuente1;
void setup(){
  size(500,700);
  
  minim=new Minim (this);
  misonido =minim.loadFile ("sound.wav");
  
  fuente= createFont ( "arcade.TTF", 48);
  fuente1= loadFont ( "OCRAbyBT-Regular-40.vlw");  
  inicio= loadImage ("planet.jpg");
  aster= loadImage ("asteroidelinea.png");
  instrucciones= loadImage ("night-sky.jpg");
  fondo= loadImage ("espacio.jpg");
  heart =loadImage ("heart.png");
  planet =loadImage("planetpink.png");
  asterblue =loadImage ("asterblue.png");
  cartel = loadImage ("botonneon.png");
  boton= loadImage ("neonbutton.png");
  win=loadImage("win.jpeg");
  lose=loadImage("lose.jpeg");
  sound [0] =loadImage ("volume.png");
  sound [1] =loadImage ("volumemute.png");
   game= new ArrayList <Juego>();
  cosas= new ArrayList <Objetos>();
  nave= new ArrayList <Gatito> ();
}
void draw(){
  background (15);  
 if (pantalla==0){
  inicio();  
 }
  if (pantalla==1){
  instrucciones();  
 }
  if (pantalla==2){ //JUEGO
    juego();
    }//fin pant2
  if (pantalla==3){ //ganar
    ganaste();
    }//fin pant2
  
 if (pantalla==4){
  perdiste(); 
 }
 IconMusic();
}//fin draw
void mousePressed (){
 PlayMusic();
 boton1(); 
 boton2();
 if (pantalla==3 || pantalla==4){
 reiniciar();
}
}//fin mouse

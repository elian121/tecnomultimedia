int cantX, cantY;
float modX, modY;
void setup(){
size(600,600);
cantX=10;
cantY=10;




}
void draw(){
  
  background(255);
  modX = (float) width/cantX;
modY = (float) height/cantY;
 for (int i=0; i<cantX; i++){
for (int j=0; j<cantY; j++){
  float centroX = i*modX+modX/2;
  float centroY = j*modY+modY/2;
  rectMode(CENTER);
  
  
  

  
  
  
  fill(mouseX*255/width,0,0);
  if (i<cantX){
  
  ellipse(centroX, centroY, 70, 70);
  
  }
}
}





}
/*
Elian Passero
legajo:81693/8
Video: https://www.youtube.com/watch?v=SmvXM6NkqNs&ab_channel=ElianPassero
*/

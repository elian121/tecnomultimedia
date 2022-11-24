void drawplanet (){
  imageMode (CENTER);
  image (planet,width/2,contador,450,450); 
  contador+=4;
  if (contador>=Gposy+100){
 pantalla=3; 
  }
}//fin

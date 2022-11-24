void boton1(){ //de inicio
  if (pantalla==0 && mouseX>100 && mouseX<100+330 && mouseY>526 && mouseY<526+57){
   pantalla=1; 
  }
}
void boton2(){// de instrucciones
  if (pantalla==1 && mouseX>78 && mouseX<78+330
  && mouseY>620 && mouseY<620+40){
   pantalla=2; 
  }
}
void IconMusic(){
    imageMode (CORNER);
    image (sound[M],426,19,60,60);
}
void PlayMusic(){  
   if (M==0 && mouseX>426 && mouseX<426+60 && mouseY>19 &&mouseY<19+60){
    M=1;
   misonido.pause(); 
  }else if (M==1 && mouseX>426 && mouseX<426+60 && mouseY>19 &&mouseY<19+60){
    M=0;
    misonido.loop();  
  }
}

void botonreinicio(){
  image (boton, 13,519,481,202);
//  rect (108,590,290,60); //referencia boton
 textSize (10);
  textFont (fuente1);
  textAlign (CENTER);
    fill (random (250));
  text ("Reiniciar", 255, 630);
}
void reiniciar(){
  if (mouseX>108 && mouseX<108+290 && mouseY>590 && mouseY<590+60){
    pantalla=1;
    vida=45;
    contador=-1500;
  }
}

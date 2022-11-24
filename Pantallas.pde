void juego(){ //pantalla 2
imageMode (CORNER);
  image (fondo, -299,-88, 1066, 943);    
   for (int i=0; i<game.size(); i++){
    Juego ObjAux =game.get(i);  
    ObjAux.agregarCat();
    ObjAux.agregarObj();
    drawplanet ();
    ObjAux.Vidas();
   }
   for (int e=0; e<secuencia1; e++){
   if (agregarObj2<=0){
      agregarObj2= 200; 
    game.add (new Juego());
    }}
}


void inicio(){ //pantalla 0
  image (inicio,-34,2,568,432);
image(aster,0,474,521,153);
//  rect (100,526,330,57); //espacio q ocupa el texto
  textFont (fuente);
 textSize(100);
 fill (random(200),0,random(200));
  text ("inicio", 98,585);  
}

void instrucciones (){ //pantalla 1
  imageMode (CORNER);
  image (instrucciones,0,0,500,700); 
  fill (228,7,205);
    textAlign (CORNER);
  textSize (21);
  textFont (fuente);
  text ("instrucciones",79,228);
  text ("Objetivo",143,57); 
   image (planet,20,271,55,55); 
   image (planet,20,387,55,55); 
   image (planet,20,487,55,55);   
  fill (255);
  textFont (fuente1);
  textSize (27);
   text("Ayuda al gatito espacial \n a llegar a su planeta",56,118);
   fill (97,209,165);
   textSize (26);
  text("Mueve la nave con \nlas letras A y D \n",94,295);
  text ("Evita los asteroides \no perderas vidas \n",95,413);
  text ("Si te quedas sin\nvidas pierdes el \njuego ",100,515);
  fill (random (250));
  text ("Click para continuar",83,649);
} 

void ganaste(){ //pantalla 3
  image (win, -91, -6, 685, 720); 
  image (cartel, 23,72,468,260);
  textSize (70);
  textAlign (CENTER);
  fill (255);
  textFont (fuente);
  text ("GANASTE", 250, 223);
  botonreinicio();
}
void perdiste(){ //pantala 4
  image (lose, -88, -4, 686, 726);
   image (cartel, 23,72,468,260);
  textSize (50);
  textFont (fuente);
  textAlign (CENTER);
  fill (255);
  text ("Perdiste", 250, 223);
    botonreinicio();
}

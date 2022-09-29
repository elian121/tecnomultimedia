//declaracion de una clase:
class conejito {
  //propiedades de la clase:
  float x, y, diam, velX;
 
  //constructor:
  conejito(){
   x = 50;
   y = height/2;
   diam = 70;
   velX = 2;
   
  }
 
  //funcionalidad:
  void dibujar(){
    push();
    image(conejito, x, y , diam , diam);
    pop();
  }
 
  void mover(){
    x+=velX;
    rebotar();
  }
 
  void rebotar(){
    if ( x+diam/2 > width ){
      velX = - velX;
    }
    if ( x-diam/2 < 0 ){
      velX = - velX;
    }
   
  }
 
  //funcionalidades
 
}

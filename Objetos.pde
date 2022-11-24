// las variables declaradas en class se ejecutan cda vez q se ejecuta la clase
//las variables declaradas al principio son globales y se modifican globalmente
//esto es importante si tengo una variable en random
// si tengo una pos en random declarada antes del setup, este cambiara constantemente
//si tengo la var. decladada en el class la pos del obj se mantendra y cambiara entre un obj y el otro
class Objetos{
  float aleatoriox= random (0,width);
  float posy=0;
  float tam =50;
  float vel=1;
  
//constructor 
 Objetos(){
}
void drawObj (){  
  fill(255);
  imageMode (CENTER);
  image (asterblue, aleatoriox,posy,tam,tam);
}
void moverObj (){
  posy+=8;
//  if (posy>=height+10){
//    posy=-10;
//  }
}
void collision(){
  if (aleatoriox+tam/2>=Gposx+20 && aleatoriox-tam/2<=Gposx+Gtam-20
  && posy>=Gposy+20 && posy<=Gposy+Gtam1-20){

    vida=vida-1;
    }    }//fin colision  
}//final

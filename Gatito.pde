class Gatito {
  int contC=50;
  int estC=0;
  PImage [] cat =new PImage[3];
  Gatito (){
     cat[0] =loadImage ("cat1.png");
     cat[1] =loadImage ("cat2.png");
      cat[2] =loadImage ("cat3.png");
  }
 void drawCat(){
    fill (0,50,200);
  //rect (Gposx,Gposy,Gtam,Gtam);
  image (cat[estC], Gposx,Gposy,Gtam, Gtam1);
  }
  void moverCat (){
    if (keyPressed ){
   if (key== 'a' && Gposx>=0){
    Gposx-=5;
  }
  if (key=='d'&& Gposx<=width-Gtam){
    Gposx+=5;
  }}
  }
  void actCat(){
    if ( contC>=10 ){
      estC=0;
      contC-=1;
    }else if (contC<=10){
      estC=1;
      contC+=1;
    }
  }

  }

class Juego {
  Juego(){ 
  }
  
  void Vidas(){
        if (vida<=45 && vida>=30){

      image (heart, 50,50,50,50);
      image (heart, 120,50,50,50);
      image (heart, 190,50,50,50);
    }    if (vida<=30 && vida>=15){

      image (heart, 50,50,50,50);
      image (heart, 120,50,50,50);
    }    if (vida<=15 && vida>=0){

        image (heart, 50,50,50,50);
    } if (vida<=0){
     pantalla=4;
    }    
  }
  
  void agregarCat(){
   for (int i=0; i<nave.size(); i++){
    Gatito ObjAux =nave.get(i);  
    ObjAux.drawCat ();
    ObjAux.moverCat();
    ObjAux.actCat();
   }
   for (int e=0; e<secuencia1; e++){
    if (agregarObj1<=0){
      agregarObj1= 200; 
      nave.add (new Gatito());
    }}        }//fin agregar cat
    
  void agregarObj(){
  //for utilizar metodos
  for (int i=0; i<cosas.size(); i++){
    Objetos ObjAux =cosas.get(i); 
    ObjAux.drawObj();
    ObjAux.moverObj();
    ObjAux.collision();
  }
  //for invocar al objeto
  for (int e=0; e<secuencia; e++){
    if (agregarObj<=0){
      agregarObj= 200; 
      cosas.add (new Objetos());
    }else{
      agregarObj--;
    }
  }}
  
}//final

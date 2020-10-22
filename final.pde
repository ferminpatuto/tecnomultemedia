class PantallaPerdiste{
  PFont miFuente;
  String texto; 
  String volver;
  int x,y;
  int radio;
  
  PantallaPerdiste(){
    miFuente = loadFont("ACaslonPro-Bold-48.vlw"); 
    texto = "GAME\nOVER";
    volver = "Restart";
    x = width/2;
    y = height/2;
    radio = 85;
  }
  void dibujar(){
  background(#000000);
  fill(#E8E8E8);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text(texto,x,y-100);
  textSize(25);
  text(volver,x,y+200);
} 
boolean click(){
  if(dist(x,y+200, mouseX, mouseY)<radio){
    return true;
  } else {
    return false; 
  }
}
}

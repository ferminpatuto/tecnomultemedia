class PantallaInicio {
  PImage img3;
  PFont miFuente;
  String texto; 
  String play;
  int x,y;
  int radio;
  

  PantallaInicio(){
    miFuente = loadFont("ACaslonPro-Bold-48.vlw"); 
    play = "PLAY";
    x = width/2;
    y = height/2;
    radio = 50;
    img3 = loadImage("inicio.jpg");
  }

  void dibujar(){
image( img3, 450, 300, 900, 600); 
  fill(#7C3C00);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(25);
  text(play,x,y+150);

} 
boolean click(){
  if(dist(x,y+150, mouseX, mouseY)<radio){
    return true;
  } else {
    return false; 
  }
}
}

//Patuto fermin
//Legajo 81777/2
//Comision 3
Juego juego;
boolean DEBUG = false;

void setup(){
  size(900,600);
  juego = new Juego();
  
}

void draw(){
  background(#0D00A7);
  juego.draw();
 }
 
void keyPressed(){
  juego.keyPressed();
  
   
}

void mousePressed(){
  juego.mousePressed();
  
  
  println(mouseX+","+mouseY);
  
}

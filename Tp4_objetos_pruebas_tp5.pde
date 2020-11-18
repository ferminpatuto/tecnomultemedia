import ddf.minim.*;
Minim  minim;
AudioPlayer player;
Juego juego;

boolean DEBUG = false;
void setup() {
  size(600, 400);
  background(240);
  surface.setResizable(true);
  imageMode(CENTER);
  textAlign(CENTER);
  juego = new Juego();
  frameRate(14); 

}

void draw() {
  juego.draw();
}


  
  
void mouseClicked() {
  juego.mouseClicked();
}



void keyPressed() {
 juego.keyPressed();
}

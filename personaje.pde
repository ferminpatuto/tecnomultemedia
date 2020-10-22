class Hor {
  PImage img;
  float ancho,alto,radio;
  float x, y;
  float paso;

 
  Hor() {
    img = loadImage("why.png");
    x = width/2;
    y = 550;
    ancho = 110;
    alto = 120;
    radio = alto/2;
    paso = 60;
  }
  void draw() {
    push();
    translate(x, y);
    imageMode(CENTER);
    image( img, 0, 0, ancho, alto);
    pop();
  }

  void keyPressed() {
    mover();
  }

  void mover() {
    

    if (keyCode==LEFT) {
      x = (x - paso);
    }
    if (keyCode==RIGHT) {
      x = (x + paso);


  }
  }
  
 
  float getX(){
   return x; 
  }
  
   float getY(){
   return y; 
  }

 float getRadio(){
   return radio; 
  }
  
}

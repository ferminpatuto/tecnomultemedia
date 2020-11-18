
class Osos {
  PImage img2;
  float x, y;
  float dir, vel;
  float ancho, alto;
  float radio;  

  
  Osos() {
    x = 0;
    y = random (0, width);;
    dir = random (20, 160);
    vel = random (8, 10);
    ancho = 100;
    alto = 90;
    radio = alto/2;
    img2 = loadImage("oso.png");
  }




  void draw() {
    mover();
    dibujar();
  }

  void dibujar () {
    push();
    translate(x, y);
    image( img2, 0, 0, ancho, alto);
    pop();
  }

  void mover() {
    float despX, despY;
    despX = cos( radians(dir) ) * vel;
    despY = sin( radians(dir) ) * vel;
    x+=despX;
    y+=despY; 

    if ( x>width+ancho ) {
      x = random (0, width);
      y = 0;
    }
    if ( x<0-ancho ) {
      x = random (0, width);
      y = 0;
    }
    if ( y>height+ancho ) {
      y = 0;
      x = random (0, width);
    }
    if ( y<0-ancho ) {
      y = 0;
      x = random (0, width);
    }
  }

  boolean colision(  float x_, float y_, float radio_ ) {
    if ( DEBUG ) {
      stroke(255);
      line(x, y, x_, y_);
    }
    float distancia = dist(x, y, x_, y_);
    if ( distancia < radio+radio_ ) {
      return true;
    } else {
      return false;
    }
  }

}

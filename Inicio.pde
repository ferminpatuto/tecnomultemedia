class Inicio {


  int estado;
  PImage img;
  Inicio() {
    img =  loadImage("pantalla0.jpg");
  }

  void iniciar() {
    pushStyle();
    background(255);
    image(img, width/2, height/2);
    println(estado);

    rectMode(CENTER);
    noFill();
    rect(width/2+7, height/2+70, 106, 20);
    fill(#4B4B4B);

    strokeWeight(2);
    rect(width/2+7, height/2+101, 190, 20);

    fill(#0A0A0A);
    textSize(12); 
    text( "Toque una tecla para el sonido", width/2+7, height/2+104);
    popStyle();
  }

  boolean click() {
    if (mouseX>width/2-60 && mouseX<width/2+60 && mouseY>height/2+60 && mouseY<height/2+80 ) {
      return true;
    } else {
      return false;
    }
  }
}

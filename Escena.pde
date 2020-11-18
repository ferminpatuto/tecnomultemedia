class Escena {
  PImage img;
  Escena() {
  }


  void draw(PImage img, String dialogo) {
    imageMode(CENTER);
    pushStyle();
    background(255);
    image(img, width/2, height/2);
    fill(0);


    rectMode(CENTER);
    fill(100, 20);
    rect(width/2+212, height/2+160, 148, 16);
    fill(0);

    fill(100, 20);
    rect(width/2+212, height/2+188, 148, 16);
    fill(0);

    textAlign(CENTER);
    fill(#FFFFFF);
    textSize(12); 
    text( dialogo, width/2-150, height/2+164);

    popStyle();
  }

  boolean click() {
    if ( mouseX>width/2+138 && mouseX<width/2+286 && mouseY>height/2+152 && mouseY<height/2+168 ) {
      return true;
    } else {
      return false;
    }
  }
  boolean clickdos() {
    if ( mouseX>width/2+138 && mouseX<width/2+286 && mouseY>height/2+180 && mouseY<height/2+196 ) {
      return true;
    } else {
      return false;
    }
  }
}

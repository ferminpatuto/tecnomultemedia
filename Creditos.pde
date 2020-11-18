class Creditos {

  int  y; 
  int  y2; 
  int  y3; 
  int  y4;


  void creditos(PImage logo) {

    frameRate(14); 
    textAlign(CENTER);
    y4=y +400;
    y3=y +320;
    y2=y +250;
    y=y  -10;
    background(0);
    textSize(20); 
    fill(253, 255, 137);

    image(logo, width/2, y2);
    text("Desarollador:\n Fermin Patuto", width/2, y2+50);
    text("Dibujos:\n Fermin Patuto", width/2, y3+50);
    text("Programacion: \n Fermin Patuto", width/2, y4+50);
  }
}

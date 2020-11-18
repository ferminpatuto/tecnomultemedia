class Imagen {
  PImage[] img;
  PImage logo;
  Imagen() {
    logo = loadImage("logo.png");
    img = new PImage[15];
    img[0] = loadImage("pantalla0.jpg");
    img[1] = loadImage("pantalla1.png");
    img[2] = loadImage("pantalla2.png");
    img[3] = loadImage("pantalla.jpg");
    img[4] = loadImage("pantalla4.jpg");
    img[5] = loadImage("pantalla5.jpg");
    img[6] = loadImage("pantalla6.jpg");
    img[7] = loadImage("pantalla7.jpg");
    img[8] = loadImage("pantalla8.jpg");
    img[9] = loadImage("pantalla9.jpg");
    img[10] = loadImage("pantalla10.jpg");
  }
}

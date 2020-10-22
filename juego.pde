  PImage img;

  
class Juego {
  Osos [] arregloOsos;
  int cantOsos = 4;
  int estado = 1;
  Hor pjhora;
  PantallaInicio inicio;
  PantallaPerdiste perdiste;
  
  Juego() {
    pjhora = new Hor();
    inicio = new PantallaInicio();
    perdiste = new PantallaPerdiste();
    arregloOsos = new Osos[cantOsos];
    for ( int i=0; i<cantOsos; i++ ) {
      arregloOsos[i] = new Osos();
      
       img = loadImage("pantalla.jpg");
    }
  }

  
  void draw() {
    imageMode(CENTER);
   image( img, 450, 300, 900, 600);

    
    
     if ( estado==1) {
      inicio.dibujar();
    } else if (estado==2) { 
      pjhora.draw();
      for ( int i=0; i<cantOsos; i++ ) {
        arregloOsos[i].draw();
        if ( arregloOsos[i].colision( pjhora.getX(), 
          pjhora.getY(), pjhora.getRadio() ) ) {
          cambiarAEstado(3);
        }
      }
    } else if (estado==3) {
      perdiste.dibujar();
      perdiste.click();
   }
   
   
  }

  void keyPressed() {

    if ( estado==1) {
    } else if (estado==2) { 
      pjhora.keyPressed();
    } else if (estado==3) {
    }
  }

  void mousePressed() {
    if (inicio.click() && estado == 1) {
      cambiarAEstado(2);
    } 
    if (perdiste.click() && estado ==3) {
      estado = 1;
    }
  }

 

  void cambiarAEstado( int nuevoEstado_ ) {
    estado = nuevoEstado_;
    if ( nuevoEstado_ == 2 ) {
     
      pjhora = new Hor();
      arregloOsos = new Osos[cantOsos];
      for ( int i=0; i<cantOsos; i++ ) {
        arregloOsos[i] = new Osos();
      }
    }
  }
}

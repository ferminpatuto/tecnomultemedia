class Juego {
  int estado = 0;
  Osos [] arregloOsos;
  Hor pjhora;
  int cantOsos = 4;
  Inicio miInicio;
  Dialogo miDialogo;
  Imagen miImagen;
  Escena miEscena;
  Creditos miCreditos;


  Juego() {
     minim = new Minim(this);
    pjhora = new Hor();
    arregloOsos = new Osos[cantOsos];
    for ( int i=0; i<cantOsos; i++ ) {
    arregloOsos[i] = new Osos();   
    miEscena = new Escena();
    miInicio = new Inicio();
    miDialogo = new Dialogo();
    miImagen = new Imagen();
    miCreditos = new Creditos();
    player = minim.loadFile("tormenta.wav");
   
    }
  }

  void draw() {    
    if ( estado==0) {
      miInicio.iniciar();
      miInicio.click();
    } else if (estado != -1) {
      miEscena.draw(miImagen.img[estado], miDialogo.dialogo[estado]);
      miEscena.click();
      miEscena.clickdos();
    } if (estado==3) { 
      pjhora.draw();
      for ( int i=0; i<cantOsos; i++ ) {
        arregloOsos[i].draw();
        if ( arregloOsos[i].colision( pjhora.getX(), 
          pjhora.getY(), pjhora.getRadio() ) ) {
    } 
     if (estado == -1) {
      miCreditos.creditos(miImagen.logo);
    }
    println(estado);
  }
  }
  }
    void keyPressed() {
     //if (player.isPlaying() ) 
  //{

    //player.pause();
  //} else
  //{
    //player.play();
  //}
     if (estado==3){ 
      pjhora.keyPressed();
   }
  }
  void mouseClicked() {
    if (estado == -1) {
      cambiarAEstado(0);
    }

    if (miEscena.clickdos() && estado ==10) {
      cambiarAEstado(-1);
    }
    if (miEscena.click() && estado ==10) { // escena 10
      cambiarAEstado(0);
    }

    if (miEscena.click() && estado ==9) { // escena 9
      cambiarAEstado(7);
    }
    if (miEscena.clickdos() && estado ==9) {
      cambiarAEstado(6);
    }

    if (miEscena.clickdos() && estado ==8) {
      cambiarAEstado(10);
    }
    if (miEscena.click() && estado ==8) { // escena 8
      cambiarAEstado(9);
    }



    if (miEscena.click() && estado ==7) { // escena 7
      cambiarAEstado(-1);
    }
    if (miEscena.clickdos() && estado ==7) {
      cambiarAEstado(0);
    }

    if (miEscena.click() && estado ==6) { // escena 6
      cambiarAEstado(0);
    }
    if (miEscena.clickdos() && estado ==6) {
      cambiarAEstado(-1);
    }
    if (miEscena.click() && estado ==5) { // escena 5
      cambiarAEstado(7);
    }
    if (miEscena.clickdos() && estado ==5) {
      cambiarAEstado(6);
    }

    if (miEscena.click() && estado ==4) { // escena 4
      cambiarAEstado(5);
    }
    if (miEscena.clickdos() && estado ==4) {
      cambiarAEstado(6);
    }
    
    if (miEscena.clickdos() && estado ==3) {
      cambiarAEstado(9);
    }
    if (miEscena.click() && estado ==3) { // escena 3
      cambiarAEstado(-1);
    }

    if (miEscena.clickdos() && estado ==2) {
      cambiarAEstado(8);
    }
    if (miEscena.click() && estado ==2) { // escena 2
      cambiarAEstado(3);
    }

    if (miEscena.clickdos() && estado ==1) {
      cambiarAEstado(4);
    }
    if (miEscena.click() && estado ==1) { // escena 1
      cambiarAEstado(2);
    }

    if (miInicio.click() && estado ==0) { //inicio
      cambiarAEstado(1);
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

void DibujarFormas()
{
  background(0);
  
  for ( int i = 0; i <= Puntos; i++){
    fill(floor(random (0,255)), floor(random (0,255)), floor(random (0,255)));
    ellipse (floor(random(50,550)),floor(random(100,350)),Volumen,Volumen);
  }
  
  
  //circulo
  PosX = floor(random (50,550));
  PosY = floor(random (100,350));
  fill (255,0,0);
  ellipse (PosX, PosY, Volumen, Volumen);
  
  //puntaje
  fill(255,0.0);
  textAlign(CENTER);
  textSize(18);
  text("PUNTOS:" + (Puntos), 250,30);
  
  //tiempo
  fill(255,0,0);
  textAlign(LEFT);
  textSize(18);
  text("Tiempo:" + millis()/1000, 20, 30);
  
  Repintar = 0;
  
}

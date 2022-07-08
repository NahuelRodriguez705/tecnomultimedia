//Pablo Rodriguez
//legajo: 88145/4
//https://youtu.be/88IgZo2YOOE


int Jugar;
int Repintar;
int Volumen;
int Puntos;
int PosX;
int PosY;


void setup(){
  size(600,400);
  background(0);
  
  Jugar    = 1;
  Repintar  = 1;
  Volumen  = 35;
  Puntos   = 0;
  PosX     = 0;
  PosY     = 0;
  
  
  
}

void draw(){  
  if (  Jugar == 1 && Repintar == 1 ){
   DibujarFormas();
 }
  
 
}

void mouseClicked(){
  if (Jugar == 1){
    if (Repintar == 0){
      Repintar = 1;
    }
    if (mouseX > PosX - Volumen && mouseX < PosX + Volumen && mouseY > PosY - Volumen && mouseY < PosY + Volumen){
      Puntos += 1;
    } else {
      Jugar = 0;
      
      fill(255,0,0);
      textAlign(RIGHT);
      textSize(18);
      text("GAME OVER:" + Puntos + "en" + millis()/1000 + "segs", 580,30);
    }
  }
  
}

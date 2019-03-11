final int ZIJDE = 15;
final int AANTAL = 15;
void setup() {
size(350, 350);
background(#FFFFFF);
// Hier jouw code om de vierkantjes te tekenen
tekenVierkantje();
}

void tekenVierkantje(){
  fill(255,0,0);
  for(int i = 0; i <= AANTAL; i++){
    for(int j = 0; j <= AANTAL; j++){
      rect((width/6)+(ZIJDE*i),(height/6)+(ZIJDE*j),ZIJDE,ZIJDE);
    }
  }
}

// Een array van int[6][2] met coördinaten van cirkels
int[][] cirkels = { {10, 15}, {100, 130}, {77, 43}, {30, 145}, {185, 17}, {99, 76} };
final int DIAMETER = 20;
final int GEEL = #FFFF00;
final int ROOD = #FF0000;
void setup() {
  size(200, 200);
  ellipseMode(CENTER);
}
void draw() {
  background(#000000);
  tekenCirkels(cirkels);
  
}

void tekenCirkels(int cirkels[][]) {
  for (int i =0; i < cirkels.length; i++) {
    fill(kleur(i));
    ellipse(cirkels[i][0], cirkels[i][1], DIAMETER, DIAMETER);
    fill(0);
    text(i, cirkels[i][0]-5,cirkels[i][1]+5);
  }
  printIndexPositieStip();
}

int kleur(int i) {
  if (mouseX >= cirkels[i][0] - DIAMETER && mouseX <=cirkels[i][0] + DIAMETER
  && mouseY >= cirkels[i][1] - DIAMETER && mouseY <=cirkels[i][1] + DIAMETER){
    return ROOD;
  } else {
    return GEEL;
  }
}

void printIndexPositieStip(){
  if (mousePressed && mouseX >= cirkels[0][0] - DIAMETER && mouseX <=cirkels[0][0] + DIAMETER
  && mouseY >= cirkels[0][1] - DIAMETER && mouseY <=cirkels[0][1] + DIAMETER){
    println ("geklikt op cirkel met index: 0");
  } else if (mousePressed && mouseX >= cirkels[1][0] - DIAMETER && mouseX <=cirkels[1][0] + DIAMETER
  && mouseY >= cirkels[1][1] - DIAMETER && mouseY <=cirkels[1][1] + DIAMETER){
    println ("geklikt op cirkel met index: 1");
  } else if (mousePressed && mouseX >= cirkels[2][0] - DIAMETER && mouseX <=cirkels[2][0] + DIAMETER
  && mouseY >= cirkels[2][1] - DIAMETER && mouseY <=cirkels[2][1] + DIAMETER){
    println ("geklikt op cirkel met index: 2");
  } else if (mousePressed && mouseX >= cirkels[3][0] - DIAMETER && mouseX <=cirkels[3][0] + DIAMETER
  && mouseY >= cirkels[3][1] - DIAMETER && mouseY <=cirkels[3][1] + DIAMETER){
    println ("geklikt op cirkel met index: 3");
  } else if (mousePressed && mouseX >= cirkels[4][0] - DIAMETER && mouseX <=cirkels[4][0] + DIAMETER
  && mouseY >= cirkels[4][1] - DIAMETER && mouseY <=cirkels[4][1] + DIAMETER){
    println ("geklikt op cirkel met index: 4");
  } else if (mousePressed && mouseX >= cirkels[5][0] - DIAMETER && mouseX <=cirkels[5][0] + DIAMETER
  && mouseY >= cirkels[5][1] - DIAMETER && mouseY <=cirkels[5][1] + DIAMETER){
    println ("geklikt op cirkel met index: 5");
  }  
}

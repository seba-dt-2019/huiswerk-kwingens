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
    println(cirkels[i][0], cirkels[i][1]);
  }
}

int kleur(int i) {
  if (mouseX >= cirkels[i][0] - DIAMETER && mouseX <=cirkels[i][0] + DIAMETER
  && mouseY >= cirkels[i][1] - DIAMETER && mouseY <=cirkels[i][1] + DIAMETER){
    return ROOD;
  } else {
    return GEEL;
  }
}

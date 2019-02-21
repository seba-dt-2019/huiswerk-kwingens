boolean start, einde;
int xMouse, yMouse, schietschijfX, schietschijfDiameter, schietschijfY, raak, mis;


void setup () {
  size (500, 500);
  start = false;
  schietschijfX = 20;
  schietschijfDiameter = 40;
  einde = false;
  schietschijfY= height/2;
  raak = 0;
  mis = 0;
};

void draw() {
  background();
  knop();
  textKnop();
  schietSchijf(); 
  scoreBord();
  bewegenSchijf(); 
};

void mouseClicked() {
  xMouse = mouseX;
  yMouse = mouseY;
  knopKlik();
  score();
  println("xMouse " + xMouse);
  println("yMouse " + yMouse);
};

void background() {
  background (0);
};

void knop() {
  fill(0, 255, 00);
  rect(200, height-50, 100, height);
};

void textKnop() {
  fill(0);
  textAlign(CENTER, BOTTOM);
  textSize(20);
  if (start == false) {
    text("Start", width/2, height-10);
  } else {
    text("Stop", width/2, height-10);
  }
};

void knopKlik() {
  if (xMouse >=200 && xMouse <= 300 && yMouse >= height-50 && yMouse <= height) {
    if (start == false) {
      start = true;
    } else {
      start = false;
    }
  }
};

void schietSchijf() {

  fill(255, 0, 0);
  ellipse(schietschijfX, schietschijfY, schietschijfDiameter, schietschijfDiameter);
};

void bewegenSchijf() {
  if (start == true) {
    if (einde == false) {
      schietschijfX ++;
    } else {
      schietschijfX --;
    }
  }

  if (schietschijfX == width - (schietschijfDiameter/2)) {
    einde = true;
  } else if (schietschijfX == schietschijfDiameter/2 ) {
    einde = false;
  }
};

void score() {
  if (xMouse >= schietschijfX-schietschijfDiameter && xMouse >= schietschijfX+schietschijfDiameter
    && yMouse >= schietschijfY-schietschijfDiameter && yMouse <= schietschijfY + schietschijfDiameter) {
    raak ++;
  } else {
    mis ++;
  }
};

void scoreBord() {
  fill(255);
  text("Aantal raak: " + raak + " aantal mis: " + mis, width/2, 20);
};

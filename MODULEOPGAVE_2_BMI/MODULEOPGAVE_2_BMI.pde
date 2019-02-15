import controlP5.*;
ControlP5 theControl;

int textSize;

void setup() {
  size(400, 350);
  background (0);
  stroke(255);
  textSize = 15;
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  println("lengte:" + leesLengte());
  println("gewicht: " + leesGewicht());
  staafBPM();
  ondergewicht();
  normaalGewicht();
  overgewicht();
  obees();
}

void staafBPM(){
  int positieStaaf = 200;
  int staafBreed = 100;
  float BPM = ((leesGewicht()/pow(leesLengte(), 2))*10000)*4;
  println(BPM);
  fill (210,30,30);
  rect(positieStaaf,height-BPM,staafBreed,height);
};

void ondergewicht(){
  float ondergewicht = height-(18.5*4);
  line(0,ondergewicht,width,ondergewicht);
  fill (255);
  text("Ondergewicht",5,ondergewicht+textSize);
};

void normaalGewicht(){
  float normaalGewicht = height-(25*4);
  line(0,normaalGewicht,width,normaalGewicht);
  fill (255);
  text("Normaal Gewicht",5,normaalGewicht+textSize);
};

void overgewicht(){
  float overgewicht = height-(30*4);
  line(0,overgewicht,width,overgewicht);
  fill (255);
  text("Overgewicht",5,overgewicht+textSize);
};

void obees (){
  float obees = height-(30*4);
  fill (255);
  text("Overgewicht",5,obees-8);
};

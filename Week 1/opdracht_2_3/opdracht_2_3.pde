float hoog;
float breed;
int stroke;
float middenHoog;
float middenBreed;
void setup (){
  size(800,500);
  hoog = constrain(300,0, width/2);
  breed =2*hoog;
  stroke = 1;
  middenHoog = hoog/2;
  middenBreed = breed/2;
};

void draw(){
  rechthoek();
  rechtboekBlauwLinks();
  rechthoekGroenLinks();
  rechthoekGroenRechts();
  rechthoekBlauwRechts();
  lijnHorizon();
  lijnVerticaal();
};

void rechthoek (){
  stroke(0);
  fill(255);
  rect(0,0,breed,hoog);
};

void lijnHorizon(){
  stroke(255,0,0);
  line(stroke,middenHoog,breed-stroke,middenHoog);
};

void lijnVerticaal(){
  stroke(255,0,0);
  line(middenBreed,stroke,middenBreed,hoog-stroke);
};
void rechtboekBlauwLinks(){
  noStroke();
  fill(0,0,255);
  rect(stroke,stroke,middenBreed,middenHoog);
};
void rechthoekGroenLinks(){
  noStroke();
  fill(0,255,0);
  rect(stroke,middenHoog,middenBreed,middenHoog);
};
void rechthoekGroenRechts(){
  noStroke();
  fill(0,255,0);
  rect(middenBreed,stroke,middenBreed,middenHoog);
};
void rechthoekBlauwRechts(){
    noStroke();
  fill(0,0,255);
  rect(middenBreed,middenHoog,middenBreed,middenHoog);
};

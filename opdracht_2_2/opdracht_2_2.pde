float hoog = 150;
float breed = 2*hoog;
int stroke = 1;
float middenHoog = hoog/2;
float middenBreed = breed/2;
void setup (){
  size(500,300);
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

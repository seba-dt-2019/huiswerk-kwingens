float hoog = 200;
float breed = 2*hoog;
int stroke = 1;
float middenHoog = hoog/2;
float middenBreed = breed/2;
void setup (){
  size(500,300);
};

void draw(){
  rechthoek();
  lijnHorizon();
  lijnVerticaal();
};

void rechthoek (){
  stroke(0);
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

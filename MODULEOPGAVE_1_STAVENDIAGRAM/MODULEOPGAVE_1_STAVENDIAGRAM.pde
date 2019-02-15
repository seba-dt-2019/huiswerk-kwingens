// Moduleopgave 1
// <naam>
// <datum>

// Staven (deze waardes kunnen veranderen)
float staafA = 20.0;
float staafB = 190.0;
float staafC = 150.0;
// hieronder komt jouw code
float X = 50;
float staafBreed = 100;
void setup (){
background(1);
size(500, 200);
};

void draw(){
  staafA();
  staafB();
  staafC();
  lijn();
};

void staafA (){
  fill(219,103,255);
  noStroke();
  rect(X,height-staafA,staafBreed,height);
  text(staafA,X,(height-staafA)-1);
};

void staafB () {
  fill (150,255,230);
  noStroke();
  rect(staafBreed+(2*X),height-staafB,staafBreed,height);
  text(staafB,staafBreed+(2*X),(height-staafB)-1);
};

void staafC () {
  fill(220,110,9);
  noStroke();
  rect((2*staafBreed)+(3*X),height-staafC,staafBreed,height);
  text(staafC,(2*staafBreed)+(3*X),(height-staafC)-1);
};
void lijn (){
  float gemiddelde =(staafA+staafB+staafC)/3;
  stroke (255,0,0);
  line (0,gemiddelde,width,gemiddelde);
};

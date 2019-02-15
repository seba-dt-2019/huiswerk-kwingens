float hoog;
float breed;
int stroke;
float middenHoog;
float middenBreed;
int middelpuntX;
int middelpuntY;

void setup (){
  size(300,200);
  hoog = 140;
  breed = 2*hoog;
  stroke = 1;
  middenHoog = hoog/2;
  middelpuntX = width / 2;
  middelpuntY = height / 2;
};

void draw(){
  rechthoek();
  lijnHorizon();
  lijnVerticaal();
};

void rechthoek (){
  rectMode(CENTER);
  stroke(0);
  rect(middelpuntX,middelpuntY,breed,hoog);
};

void lijnHorizon(){
  stroke(255,0,0);
  line(middelpuntX-hoog,middelpuntY,middelpuntX+hoog,middelpuntY);
};

void lijnVerticaal(){
  stroke(255,0,0);
  line(middelpuntX,middelpuntY-(middenHoog),middelpuntX,middelpuntY+(middenHoog));
};

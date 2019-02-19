void setup(){
  size(499,299);
  background(0);
};

void draw(){
  zin("Harry",yTop(),xLeft());
  zin("Marianne",yTop(),xRight());
  zin("Ludo",yBottom(),xLeft());
  zin("Maaike",yBottom(),xRight());
};

void zin(String naam, float Y, float X){
    text("Hallo " + naam + ", hoe gaat het met je?",X,Y);  
};

int xLeft() {
  return (width/3)-(width/4);
};

int xRight(){
  return (width/3)+(width/4);
};

int yTop(){
  return (height/2)-(height/4);
};

int yBottom(){
  return (height/2)+(height/4);
};

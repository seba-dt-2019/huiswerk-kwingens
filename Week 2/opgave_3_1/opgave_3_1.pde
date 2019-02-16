int teller;
void setup(){
  size(600,300);
  };

void draw(){  
  display();
  teller();
  berekening();
};

void display(){
  rectMode(CENTER);
  fill(255);
  rect(width/2,height/2,500,200);
};

void teller(){
  fill(0);
  textAlign(CENTER,CENTER);
  textSize (40);
  text(teller,width/2,height/2);
};

void berekening(){
  teller = millis()/1000;   
};

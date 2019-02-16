int mousex;
int mousey;
int credits;
int dubbelEven;

void setup(){
  size (600,400);
  credits = 25;
  dubbelEven = 0;
};

void draw (){
  background();
  rechthoek();
  text();
  creditDisplay();
};

void background(){
  background(255);
};

void rechthoek(){
  rectMode(CENTER);
  fill(#FEFF03);
  rect(width/2,height/2,width/2,height/4);
};

void text(){  
  fill(255,0,0);
  textSize(height/10);
  textAlign(CENTER, CENTER);
  text("(" + mousex +" - " + mousey+ ")",width/2,height/2);
};

void mouseClicked(){
     mousex = mouseX;
     mousey = mouseY;
     mouseClickChecker();
     creditChecker();
     dubbelEvenChecker();
};

void creditDisplay(){
  text ("Credit score : " + credits,width/2,height/4);
};

void mouseClickChecker(){
  if (mouseY == pmouseY && mouseX == pmouseX && dubbelEven > 0){
  } else if (mouseY%2==0 && mouseX%2==0){
    if (dubbelEven == 0){
    credits ++;
    } else if (dubbelEven == 2){
      credits += 2;
    } else if (dubbelEven == 3){
      credits += 3;
    } else if (dubbelEven == 4){
      credits += 5;
    } else if (dubbelEven >= 5){
      credits += 10;
    } 
  }
  else if (mouseY%2==0 || mouseX%2==00){
  }
  else {
    credits --;
  }
};

void creditChecker(){
  if (credits == 0){
    credits = 25;
  }
};

void dubbelEvenChecker(){
  if (mouseY%2==0 && mouseX%2==0){
    dubbelEven ++ ;
  }
  else {
    dubbelEven = 0;
  }
};

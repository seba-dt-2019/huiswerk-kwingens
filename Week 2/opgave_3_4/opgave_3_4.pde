int mousex;
int mousey;

void setup(){
  size (600,400);
};

void draw (){
  rechthoek();
  text();
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
   if (mouseX%2==0) {
     mousex = mouseX;
     mousey = mouseY;
     } 
};

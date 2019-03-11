boolean lampKnipperen;
boolean knopAan;

void setup (){
  size (400,250);
  ellipseMode(CORNER);
}

void draw(){  
  background(0);  
 drieLampen();  
 tekenKnop();
}

void lamp(int xPos,int yPos,int kleur){
  fill(100);
  rect (xPos+20,yPos+70,50,50);
  fill(kleur);
  ellipse(xPos,yPos,90,90);    
}

void drieLampen(){
  if(lampKnipperen){
    lamp(55,50,#F7072C);
    lamp(155,50,#64FF6A);
    lamp(255,50,#646AFF);
  }else {
    lamp(55,50,#760607);
    lamp(155,50,#14B720);
    lamp(255,50,#0810D1);
  }
  if (knopAan){
  lampKnipperen =!lampKnipperen;
  }
  delay (100);

}

void tekenKnop(){
  fill(#F8FFAA);
  rect(10,height-60,width-20,50);
  textAlign(CENTER);
  fill(0);
  if (knopAan){
    text("Zet uit",width/2,height-30);
  } else {
    text("Zet aan",width/2,height-30);
  }
  
}

void mouseClicked(){
 if (mouseX >= 10 && mouseX <= width-20 && 
    mouseY >= height-60 && mouseY <= height-10){
      knopAan =! knopAan;
    }
}

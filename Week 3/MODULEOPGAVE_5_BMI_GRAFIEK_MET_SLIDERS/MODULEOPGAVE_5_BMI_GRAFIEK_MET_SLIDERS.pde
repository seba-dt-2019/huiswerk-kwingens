float lengte, gewicht;

void setup(){
  size(400, 350);
  lengte = 170;
  gewicht = 69.9;
}

void draw(){
  background (0);
  topScreen();
  bottomScreen();
  stroke(255);
  line(0,bottomTopHalf(), width, bottomTopHalf());  
  println("lengte : " +lengte);
}

void topScreen(){
  tekenGewichtLijnen();
  tekstGewichtLijnen();
  staafBPM();
}

void tekenGewichtLijnen(){
  line(0,ondergewicht(), width, ondergewicht());
  line(0,normaalGewicht(), width, normaalGewicht());
  line(0,overgewicht(), width, overgewicht());
}

void tekstGewichtLijnen(){
  fill (255);
  text("Ondergewicht",5,ondergewicht()+textSize());
  text("Normaal Gewicht",5,normaalGewicht()+textSize());
  text("Overgewicht",5,overgewicht()+textSize());
  text("Obees",5,overgewicht()-8);
}

void staafBPM(){
  fill (210,30,30);
  rect((width/8)*3,berekenBPM(),100,bottomTopHalf()-berekenBPM());
}

void bottomScreen(){
  tekenSliderBalken();  
  tekstSliderBalken();
  sliderLengte();
  sliderGewicht();
}

void tekenSliderBalken(){
  fill(255);
  rect(sliderBalkX(),sliderBalkLengtePositie(),sliderBalkBreedte(),sliderBalkHoog());
  rect(sliderBalkX(),sliderBalkGewichtPositie(),sliderBalkBreedte(),sliderBalkHoog());
}

void tekstSliderBalken(){
  fill (255);
  text("Lengte : " +nf((lengte()/100),1,2)+" m",sliderBalkX(),sliderBalkLengtePositie()+sliderBalkHoog()+textSize());
  text("Gewicht : "+gewicht()+" kg",sliderBalkX(),sliderBalkGewichtPositie()+sliderBalkHoog()+textSize());
}

void sliderLengte(){  
  fill(0,0,255);
  rect(sliderBalkX()+lengte(),sliderBalkLengtePositie(),sliderBreedte(),sliderBalkHoog());
}

void sliderGewicht(){  
  fill(0,0,255);
  rect(sliderBalkX()+gewicht(),sliderBalkGewichtPositie(),sliderBreedte(),sliderBalkHoog());
}

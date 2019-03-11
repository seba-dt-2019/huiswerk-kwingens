float bottomTopHalf(){
  return height/2;
}
float ondergewicht(){
  return bottomTopHalf()-(18.5*4);
}
float normaalGewicht(){
  return bottomTopHalf()-(25*4);
}
float overgewicht(){
  return bottomTopHalf()-(30*4);
}
float obees(){
  return bottomTopHalf()-(30*4);
}

float berekenBPM(){
  return ((gewicht()/pow(lengte(), 2))*10000)*4;
}

float sliderBalkLengtePositie(){
  return bottomTopHalf()+40;
}

float sliderBalkGewichtPositie(){
  return sliderBalkLengtePositie()+70;
}

int sliderBalkX(){
  return 25;
}

int sliderBalkHoog(){
  return 25;
}

int textSize(){
  return 15;
}

int sliderBreedte(){
  return 10;
}

int sliderBalkBreedte(){
  return width-55;
}

float lengte (){
  if(mousePressed){
    println(mouseX);
    println(mouseY);
    if(mouseX>=sliderBalkX()&& mouseX <= sliderBalkBreedte()+sliderBalkX()-sliderBreedte()&& 
    mouseY >= sliderBalkLengtePositie()&& mouseY <= sliderBalkLengtePositie()+sliderBalkHoog()){
      lengte = mouseX-sliderBalkX();
    }
  }
  return lengte;
}

float gewicht(){
    if(mousePressed){
    println(mouseX);
    println(mouseY);
    if(mouseX>=sliderBalkX()&& mouseX <= sliderBalkBreedte()+sliderBalkX()-sliderBreedte()&& 
    mouseY >= sliderBalkGewichtPositie() && mouseY <= sliderBalkGewichtPositie()+sliderBalkHoog()){
      gewicht = mouseX-sliderBalkX();
    }
  }
  return gewicht;
}

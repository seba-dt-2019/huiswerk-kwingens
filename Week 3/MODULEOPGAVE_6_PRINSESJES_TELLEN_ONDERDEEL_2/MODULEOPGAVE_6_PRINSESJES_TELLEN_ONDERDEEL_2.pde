int jongentje, 
  totaalMeisje, 
  totaalJongens, 
  meisje, 
  aantalGezinnen,
  telMeisjes,
  telJongens;

void setup () {
  size (200, 200);
  jongentje = 0;
  meisje = 0;
  telMeisjes = 0;
  telJongens = 0;
  aantalGezinnen = 0;
}

void draw () {  
  tekenGezin();
  tekenTeller();
}

void tekenGezin() {
  for (int i =0; aantalGezinnen < maxAantalGezin(); i++) {
    berekenKind();
    telMeisjes = telMeisjes + meisje;
    telJongens = telJongens + jongentje;
    jongentje = 0;
    meisje =0;
    aantalGezinnen ++;
  }
}

void tekenTeller(){
  int textSize = 15;
  image (meisje(), (width/2)-meisje().width,height/3);
  text (telMeisjes, (width/2)-meisje().width,(height/3)+meisje().height+textSize );
  image (jongentje(), width/2,height/3);
  text (telJongens, width/2,(height/3)+meisje().height+textSize );
}

void berekenKind() {
  while (jongentje < 1) {
    int kind = round( random(0, 2));
    if (kind > 1) {
      meisje ++;
    } else {
      jongentje ++;
    }
  }
}


int maxAantalGezin() {
  return 100;
}

PImage jongentje() {
  return loadImage("jongetje.png");
}

PImage meisje() {
  return loadImage("meisje.png");
}

int imgHight() {
  return 50;
}

int imgWidth() {
  return 30;
}

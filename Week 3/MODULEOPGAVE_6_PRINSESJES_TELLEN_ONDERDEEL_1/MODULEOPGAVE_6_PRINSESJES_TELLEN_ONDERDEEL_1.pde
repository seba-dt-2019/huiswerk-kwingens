int jongentje;
int meisje;
int aantalGezinnen;

void setup () {
  size (200, 400);
  jongentje = 0;
  meisje = 0;
  aantalGezinnen = 0;
}

void draw () {  
  berekenKind();
  tekenGezin();
  println("jongentje " + jongentje);
  println("meisje " + meisje);
  println("maxAantalGezin " + aantalGezinnen);
}

void tekenGezin() {
  for (int i =0; aantalGezinnen < maxAantalGezin(); i++) {
    berekenKind();
    for (int m =0; m < meisje; m++) {
      image(meisje(), 0+(imgWidth()*m), 0+(imgHight()*i));
    }
    for (int j =0; j < jongentje+1; j++) {
      image(jongentje(), 0+(imgWidth()*(meisje)), 0+(imgHight()*i));
    }
    jongentje = 0;
    meisje =0;
    aantalGezinnen ++;
  }
}

void berekenKind() {
  while (jongentje < 1) {
    float kind = random(0, 2);
    if (kind > 1) {
      meisje ++;
    } else {
      jongentje ++;
    }
  }
}


int maxAantalGezin() {
  return 8;
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

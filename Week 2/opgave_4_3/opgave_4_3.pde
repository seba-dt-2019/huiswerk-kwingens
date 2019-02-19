void setup(){
  printUitkomsten(7.56);
  printUitkomsten(-7.56);
  printUitkomsten(7.498);
  printUitkomsten(-7.498);
  printUitkomsten(3.01);
  printUitkomsten(-3.01);
  printUitkomsten(4.999);
  printUitkomsten(-4.999);
};

void printUitkomsten(float getal){
  println ("getal : " + getal);
  println ("int() : " + int(getal));
  println ("rouns() : " + round(getal));
  println ("floor() : " + floor(getal));
  println ("ceil() : " + ceil(getal));
};

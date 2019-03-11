void setup() {
  bmiJack("Jack", 85, 1.80);
  bmiJill("Jill",65,1.65);
  bmiHill("hill",10000,30.0);
}

void bmiJack(String naam, int massa, float lengte) {
  printGegevens(naam, massa, lengte);
}

void bmiJill(String naam, int massa, float lengte) {
  printGegevens(naam, massa, lengte);
}

void bmiHill(String naam, int massa, float lengte) {
  printGegevens(naam, massa, lengte);
}

void printGegevens(String naam, int massa, float lengte) {
  println(naam + " weegt " + massa + " kilo en is " + lengte + " meter lang (BMI=" + bmi(massa,lengte) + ")");
}

float bmi(int massa, float lengte){
  return massa / (lengte*lengte);
}

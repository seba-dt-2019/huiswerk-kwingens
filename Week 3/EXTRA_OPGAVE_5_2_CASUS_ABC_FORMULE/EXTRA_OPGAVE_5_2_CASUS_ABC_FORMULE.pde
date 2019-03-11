float a;
float b;
float c;
float minb;
void setup() {
  a = 2;
  b = 5;
  c = -7;
  minb = -b;
  println(oplossing1());
  println(oplossing2());
}
float oplossing1(){
  return (minb + berekenWortelDiscriminant()) / berekenNoemer();
}
float oplossing2(){
  return (minb - berekenWortelDiscriminant()) / berekenNoemer();
}
float berekenDiscriminant() {
  return berekenKwadraatb() - 4*a*c;
}
float berekenWortelDiscriminant() {
 return (float)Math.sqrt(berekenDiscriminant());
  // Je hoeft niet te weten hoe deze functie precies
  // werkt, het is genoeg om te weten dat hij de
  // wortel van de discriminant in de variabele
  // wortelDiscrimant zet.
  // Je hoeft het deel "(float)Math.sqrt" dus niet
  // te begrijpen.
}

float berekenKwadraatb() {
  return b*b;
}
float berekenNoemer() {
  return 2*a;
}

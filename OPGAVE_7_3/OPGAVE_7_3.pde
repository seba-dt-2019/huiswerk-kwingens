void setup() {
  String[] meisjesNamen = {"Emma", "Julia", "Sophie", "Anna", "Mila"}, 
    jongensNamen = {"Liam", "Sem", "Lucas", "Luuk", "Noah"};
  printTop5Meisjes(meisjesNamen);
  printTop5Jongens(jongensNamen);
}

void printTop5Meisjes(String meisjesNamen[]) {
  println("Top 5 meisjes :");
  for (int i = 0; i<5; i++) {
    println(i+1+": " + meisjesNamen[i]);
  }
}

void printTop5Jongens(String jongensNamen[]) {
  println("Top 5 jongens :");
  for (int i = 0; i<5; i++) {
    println(i+1+": " + jongensNamen[i]);
  }
}

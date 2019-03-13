String [] boodschappen = {"Brood", "Melk", "Eieren", "Vleeswaren", "Koekjes"};

void setup(){
 drukAf(boodschappen);
}

void drukAf(String boodschappen[]){
    for (int i = 0; i < 5; i++){
    println("["+i+"] " + boodschappen[i]);
  }
}

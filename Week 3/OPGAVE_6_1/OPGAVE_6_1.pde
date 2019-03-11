void setup(){
  size(200,300);
  fill(0);
  berekenTafel();
}

void berekenTafel(){
  for(int i=0; i<=10; i++){
    text(i,20,20*i);
  }
}

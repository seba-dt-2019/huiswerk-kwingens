void setup(){
  size(250,300);
  fill(0);
  berekenTafel();
}

void berekenTafel(){
  for(int i=0; i<=10; i++){
    for(int j=1;j<=10;j++){
      text(i*j,20*j,20*i);
    }
  }
}

int hoog = 250;
int breed = hoog*2;
float stip = breed/3;
float stiphoog = hoog/2;
float stipbreed = breed/2;
float textSize = hoog/7;
String text = "Nippon";
size (600,600);

rect(0,0,breed,hoog);
fill (250,0, 0);
circle (stipbreed,stiphoog,stip);
textAlign (CENTER,CENTER);
textSize (textSize);
fill (1);
text (text, stipbreed,stiphoog);

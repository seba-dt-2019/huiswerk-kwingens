int X = 50;
int Y = 150;

int hoog = 150;
int breed = hoog*2;
float stip = breed/3;
float stiphoog = (hoog/2)+Y;
float stipbreed = (breed/2)+X;
float textSize = hoog/7;
String text ="Nippon";
size (800,600);

rect(X,Y,breed,hoog);
fill (250,0, 0);
circle (stipbreed,stiphoog,stip);
textAlign (CENTER,CENTER);
textSize (textSize);
fill (1);
text (text, stipbreed,stiphoog);

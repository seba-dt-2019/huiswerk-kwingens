void setup(){
  float lengteBehang=1000,
  breedteBehang=52,
  lengteMuur=225,
  breedteMuur=550;
  println(berekenRollenBehang(lengteBehang, lengteMuur, breedteBehang, breedteMuur));
}

int berekenRollenBehang(float lengteBehang,float lengteMuur,float breedteBehang,float breedteMuur){
  return ceil(berekenAantalBanenPerMuur(lengteBehang, lengteMuur)/berekenAantalBanenPerRol(breedteBehang, breedteMuur));
}

float berekenAantalBanenPerRol(float lengteBehang,float lengteMuur){
  return lengteBehang/lengteMuur;
}

float berekenAantalBanenPerMuur(float breedteBehang,float breedteMuur){
  return breedteMuur/breedteBehang;
}

void setup(){
  float lengteBehang=1000,
  breedteBehang=52,
  lengteMuur=225,
  breedteMuur=550,
  patroonHoogte = 25,
  patronenPerRolBehang = berekenAantalPatronenPerRolBehang(lengteBehang,patroonHoogte),
  patroonPerBaan = berekenAantalPatronenPerBaan(lengteMuur, patronenPerRolBehang);
  println (aantalBanenUitEenRol(patronenPerRolBehang, patroonPerBaan));
}

float berekenAantalBenodigdeBanenBehang(float breedteMuur, float breedteBehang){
  return breedteMuur/breedteBehang;  
}

float berekenAantalPatronenPerRolBehang(float lengteBehang,float patroonHoogte){
  return lengteBehang/patroonHoogte;
}

float berekenAantalPatronenPerBaan(float lengteMuur, float patronenPerRolBehang){
  return ceil(lengteMuur/patronenPerRolBehang);
}

float aantalBanenUitEenRol(float patronenPerRolBehang, float patroonPerBaan){
  return ceil(patronenPerRolBehang/patroonPerBaan);
}

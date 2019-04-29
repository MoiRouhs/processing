int tamano = 0;
int cant = 20;
Cuadro[][] cu = new Cuadro[cant][cant];
PintarCuadro pintc;

void setup(){
  size(500,500);
  tamano = width / cant;
  
  for(int i = 0; i < cant; i++){
    for(int j = 0; j < cant; j++){
      cu[i][j]= new Cuadro(tamano, i,j);
    }
  }
  pintc = new PintarCuadro(cu,(cant - 1));
}

void draw(){
  background(155);
  
  for(int i = 0; i < cant; i++){
    for(int j = 0; j < cant; j++){
      cu[i][j].crear();
    }
  }
  if(frameCount % 17 == 0){
    pintc.andar(#F111F0);
  }
}

class Cuadro{
  public color c = #FFCC00;
  public int tamano;
  public int px;
  public int py;
  
 Cuadro(int tam, int x, int y){
    tamano = tam;
    px = x;
    py = y;
  }
  void crear(){
    fill(c);
    stroke(c);
    rect(tamano*px,tamano*py,tamano,tamano);
  }
  public void setC(color ncolor){
    c = ncolor;
  }
  public color getC(){
   return c;
  }
  public void setPx(int nx){
    px = nx;
  }
  public int getPx(){
   return px;
  }
  public void setPy(int ny){
    py = ny;
  }
  public int getPy(){
   return py;
  }
}

class PintarCuadro{
  public Cuadro actual;
  public Cuadro anterior;
  public Cuadro[][] matrix;
  public ArrayList<Cuadro> pintados = new ArrayList<Cuadro>();
  public int cantidad;

  
  PintarCuadro(Cuadro[][] matris,int cant){
    cantidad = cant;
    matrix = matris;
  }  
  void andar(color c){

    if(pintados.size() == 0){
      actual = matrix[Math.round(random(cantidad))][Math.round(random(cantidad))];
      actual.c = c;
      //System.out.println(actual);
      pintados.add(actual);
    }else{
      anterior = actual;
      if(pintados.get(pintados.size() - 1) == anterior){
        System.out.println("Si");
      }
      actual = matrix[anterior.px + 1][anterior.py];
      actual.c = c;
    }
  }
}

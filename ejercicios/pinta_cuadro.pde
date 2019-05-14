int tamano = 0;
int cant = 20;
Cuadro[][] cu = new Cuadro[cant][cant];
PintarCuadro pintc1, pintc2;

void setup(){
  size(500,500);
  tamano = width / cant;
  
  for(int i = 0; i < cant; i++){
    for(int j = 0; j < cant; j++){
      cu[i][j]= new Cuadro(tamano, i,j);
    }
  }
  pintc1 = new PintarCuadro(cu,(cant - 1));
  pintc2 = new PintarCuadro(cu,(cant - 1));
}

void draw(){
  background(155);
  
  for(int i = 0; i < cant; i++){
    for(int j = 0; j < cant; j++){
      cu[i][j].crear();
    }
  }
  if(frameCount % 2 == 0){
    pintc1.andar(#F111F0);
    pintc1.estela(2);
    pintc2.andar(#FFCC00);
    pintc2.estela(12);
  }
}

class Cuadro{
  public color c = #FFFFFF;
  public int tamano;
  int px;
  int py;
  
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
  private Cuadro actual;
  private Cuadro anterior;
  private Cuadro[][] matrix;
  private ArrayList<Cuadro> pintados = new ArrayList<Cuadro>();
  private int cantidad;

  
  PintarCuadro(Cuadro[][] matris,int cant){
    cantidad = cant;
    matrix = matris;

  }  
  void andar(color c){
    int px = 0;
    int py = 0;
      System.out.println(pintados.size());
    if(pintados.size() == 0){
      actual = matrix[Math.round(random(cantidad))][Math.round(random(cantidad))];
    }else{
      anterior = pintados.get(pintados.size() - 1);
      px = anterior.px;
      py = anterior.py;
        
      do{
        do{  
          do{
            px = anterior.px + Math.round(random(-1,1));
          }while(px < 0 || px > cantidad);
          if(px == anterior.px){
            do{
              py = anterior.py + Math.round(random(-1,1));
            }while(py == anterior.py || py < 0 || py > cantidad);
          };
          actual = matrix[px][py];
        }while(actual == pintados.get(pintados.size() - 1));
      }while(pintados.contains(actual));
      
    }
          
      pintados.add(actual);
      actual.c = c;
      System.out.println(pintados.size());
  }
  
  void estela(int extension){
    if(pintados.size() >= extension){
      pintados.remove(0);
    };
  
  };
}

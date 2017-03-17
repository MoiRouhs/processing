ArrayList <Punto> Puntos = new ArrayList(); // Arreglo que contiene los elementos que se van a mostrar
int t = 40; // Tamaño del punto
int cantidad = 15; // Cantidad de puntos
void setup(){
  size(600,600);
  for(int i = 0 ; i < cantidad; i++){ // Crea la cantidad de puntos queridos
    Puntos.add(new Punto(random(30,width -30),random(30,height -30))); // Los random ponene los puntos en posición aleatoria
  }
  print(Puntos.size()); // Saber la cantidad de elementos en el arreglo
};
void draw(){
  background(240);
  for(int i = 0; i < Puntos.size();i++){ 
    Punto pt = Puntos.get(i); // Toma cada elemento del arreglo
    pt.show(t); // Le agrega un metodo que define tamaño y evento clicl para desaparecer 
  }
};

class Punto{
  float x,y;
  Punto (float x, float y){ 
     this.x = x;
     this.y = y;
  };
  void show(int tam){ 
    strokeWeight(tam);
    point(x, y);
    if(mouseX > x-t/2 && mouseX < x+t/2 && // hace que solo se pueda hacer click en cada circulo
       mouseY > y-t/2 && mouseY < y+t/2){
      if(mouseButton == LEFT){
        Puntos.remove(this); // Remueve el elemento sobre el que esta
      }
    }
  };
};

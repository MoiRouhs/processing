ArrayList <Punto> Puntos = new ArrayList(); // Arreglo que contiene los elementos que se van a mostrar
int t = 40; // Tamaño del punto
float x,y; // posición "x" "y" del punto
void setup(){
  size(600,600);
  x= random(30,width -30); 
  y= random(30,height -30);
  Puntos.add(new Punto(t)); // Se crea el punto y se añade al arreglo
  print(Puntos.size()); // Se imprime cantidad de elementos en el arreglo
};
void draw(){
  background(240);
  if (Puntos.size() >= 1 ){ // Si el arreglo tiene más de un objeto
    Puntos.get(0).show(); // se muestra el objeto 0
  }
};

class Punto{
  Punto (int tam){ //constructor del punto
    strokeWeight(tam); 
  };
  void show(){ // muestra el punto y lo establece en unas cordenadas
    point(x, y);
    if(mouseX > x-t/2 && mouseX < x+t/2 && // hace que solo se pueda hacer click en cada circulo
       mouseY > y-t/2 && mouseY < y+t/2){
      if(mouseButton == LEFT){
        Puntos.remove(0); // Se remueve elemento del arreglo y de esta forma se quita de la pantalla
      }
    }
  };
};

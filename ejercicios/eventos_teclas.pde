int x, y; // Variables que controlan el movimiento en "X" y "Y"
int t = 40; // Esta controla el tamaño del punto
void setup(){
  size(400,400);
  frameRate(75);
 //Posición inicial del punto 
  x= width/2; 
  y= width/2;
};
void draw(){
  background(144);
  Punto pt = new Punto();
  pt.crear(t); // se crea punto con tamaño "t"
};
// Clase que crea punto
class Punto{
  void crear(int tam){ 
    strokeWeight(tam); 
    point(x, y);
  };
};
// Función que maneja los eventos cada vez que se preciona una tecla
void keyPressed(){ 
/*
  La primera condición del if limita el funcionamiento si se oprime la telca de flecha izquierda
  y la segunda parte del if limita el desplazamiento hasta el borde izquierdo de la ventana
*/  
  if (keyCode == LEFT && x > t/2){  
    x -=5;

/*
  La primera condición del else if limita el funcionamiento si se oprime la telca de flecha derecha
  y la segunda parte del if limita el desplazamiento hasta el borde derecho de la ventana
*/    
  }else if(keyCode == RIGHT && x < width - t/2){
    x +=5;
  }
// Repite las mismas condiciones pero para subir y bajar el punto  
  if (keyCode == UP && y > t/2){
    y -=5;
  }else if(keyCode == DOWN && y < height - t/2){
    y +=5;
  }
};

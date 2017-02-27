float lx,ly; // Estas dos variables guardan la posición del elemento
void setup(){ 
  size(400,400);
  lx = random(1,400); // se define la posición inicial del elemento
  ly = random(1,400);
};

void draw(){
  background(144);
  Punto pt = new Punto(); // se crea el punto
  pt.crear(80); // se dibuja el punto y coo argumento se l pasa el tamaño
  
};
// Clase punto 
class Punto{
  void crear(int tam){ // método que crea el punto 
    strokeWeight(tam); 
// Este if hace la magia ya que solo deja activar el evento del mouse en la zona determinada   
     if(mouseX > lx-tam/2 && mouseX < lx+tam/2 &&
        mouseY > ly-tam/2 && mouseY < ly+tam/2){
 // Este if condiciona el evento del mouse que pasa
       if(mouseButton == LEFT){
         lx = mouseX;
         ly = mouseY;
       }
     }
    point(lx, ly);
  };
};

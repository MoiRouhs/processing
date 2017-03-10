int r = 50; // cantidad de circulos a crear
int tam = 50; 77 tamaño de los circulos
Circulo[] cir = new Circulo[r]; //se crea un conjuntos de "r" circulos

void setup(){
  size(400,400); 
  for(int i = 0; i < r; i++){ // le da la posición a cada circulo
    cir[i]= new Circulo(random(30,width -30),random(30, height - 30));
  }  
    print(cir);
}
void draw(){
  background(205);
  for(int i = 0; i < r; i++){ // a cada circulo lo crea 
    cir[i].crear(tam);
  }

}
class Circulo{
  float x,y;
  Circulo(float x, float y){
    this.x = x;
     this.y = y;
  } 
  void crear(int t){
    ellipse(x,y,t,t);
    if(mouseX > x-t/2 && mouseX < x+t/2 && // hace que solo se pueda hacer click en cada circulo
          mouseY > y-t/2 && mouseY < y+t/2){ // esto hace la magia para que cada circulo quede con su propio click
      if(mouseButton == LEFT){ // Limita el click al boton izquierdo del mause
        x= random(30,width -30); //cambia cordenadas "x" y "y" de cada circulo
        y= random(30,width -30);
      }
    }
  } 
}

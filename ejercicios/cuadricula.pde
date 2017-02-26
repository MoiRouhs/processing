void setup() {
  size(600, 600);
};

void draw() {

  Cuadricula line = new Cuadricula();  
  line.crear(10);

};


class Cuadricula{
  
  void crear(){
    stroke(126);
    line(width/2, 0,width/2,height);
    line(0,height/2,width,height/2);
  };
  
  void crear(int arg){
    float mayor = (width >= height)?width:height;
    float menor = (width <= height)?width:height;
    println(mayor,menor);
    float distancia = menor/arg;
    stroke(0);
    for(int i = 0; i<= mayor;i++){
      line(distancia*i, 0,distancia*i,height);
      line(0,distancia*i,width,distancia*i);
    }
  }; 
};

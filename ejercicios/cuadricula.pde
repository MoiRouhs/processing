void setup() {
  size(500, 500);
};

void draw() {
  Cuadricula line = new Cuadricula();
  line.crear(6);
};

class Cuadricula{
  
  void crear(){
    stroke(126);
    line(width/2, 0,width/2,height);
    line(0,height/2,width,height/2);
  };
  
  void crear(int arg){
    float nw = width/arg;
    float nh = height/arg;
    println(nw,nh);
    stroke(126);
    for(int i = 0; i<= arg -1;i++){
      line(nw*i, 0,nw*i,height);
      line(0,nh*i,width,nh*i);
    }
  }; 
};

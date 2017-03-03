int x, y;  
void setup(){
  size(400,400);
  frameRate(65);

  x= width/2; 
  y= width/2;
};
void draw(){
  background(144);
  Punto pt = new Punto();
  pt.crear(10);
};

class Punto{

  void crear(int tam){ 
    strokeWeight(tam); 
    point(x, y);
  
    if(keyPressed == true && keyCode == LEFT && x > tam/2){
      x --;
    }else if(keyPressed == true && keyCode == RIGHT && x < width - tam/2){
      x ++;
    }
    
    if(keyPressed == true && keyCode == UP && y > tam/2){
      y --;
    }else if(keyPressed == true && keyCode == DOWN && y < height - tam/2){
      y ++;
    }
    
  };
};


void setup (){
    size(500,500);
    frameRate(500);
    f = createFont("Arial",16,true);
};

void draw (){
  Circulo c = new Circulo();
  c.dibuja();
};

class Circulo{
  int r = int(random(50));
  int x = int(random(50,450));
  int y = int(random(50,450));
  color c = color(random(255),random(255),random(255));
  
  void dibuja(){
    noFill();
    stroke(c);
    ellipse(x,y,r,r);
  };
};

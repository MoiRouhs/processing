String palabra ="";
color c;
void setup(){
  size(400,400);
  textSize(32);
};

void draw(){
  background(0);
  fill(c);
  text(palabra,50,50);

};

void keyPressed(){
  print(key);
  if(keyCode != BACKSPACE){
    palabra = palabra + key;
    if(palabra.indexOf("verde") != -1){
      c= #4CAF50;
    }else if(palabra.indexOf("rojo") != -1){
      c = #F44336;
    }else{
     c = #FFFFFF;
    }
  }else if(palabra.length() >= 1){
    palabra = palabra.substring(0,palabra.length() -1);
  }
};

String palabra ="";

void setup(){
  size(400,400);
  textSize(22);
};

void draw(){
  background(144);
  text(palabra,50,50);

};

void keyPressed(){
  print(key);
  if(keyCode != BACKSPACE){
    palabra = palabra + key;
  }else{
    palabra = palabra.substring(0,palabra.length() -1);
  }
};

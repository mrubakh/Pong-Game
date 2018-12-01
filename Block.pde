class Block{
  int posx, posy;
  int id;
  boolean there;
  
  Block(int x,int y, int identity){
    posx = x;
    posy = y;
    id = identity;
    there = true;
  }
  
  void build(){
    noFill();
   // rect(posx, posy, 100, 50);
    image(img,posx,posy);
    
  }
}

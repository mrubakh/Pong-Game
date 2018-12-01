class Ball{
  
  PVector location;
  PVector velocity;
  
  Ball(int x, int y){
    location = new PVector(x,y);
    velocity = new PVector(random(-20,-3),random(5,20));
    
  }
  void build(){
    ellipse(location.x, location.y, 20, 20);
  }
  
  void collideWithBlocks(){
    for(Block b: blocks){
      if(this.location.y>50 && this.location.y<100 && this.location.x > (120*b.id+10) && this.location.x<(120*b.id+10)+100){
        b.there=false;
        break;
      }
    }
    
  }
  
  void bounce(){
    
    if(location.y<507 && location.y >493 && location.x>mouseX && location.x < mouseX+100){
      velocity.y = -velocity.y;
    }
  }

    
  void move(){
    location.add(velocity);
    
    if(location.x<0 || location.x>width){
      velocity.x = -velocity.x;
    }
    
    if(location.y<0){
      velocity.y = -velocity.y;
    }
    if(location.y>height){
      game = false;
      textSize(100);
      fill(0);
      text("You Lose!", width/9, height/2);
      textSize(20);
      text("press enter to play again", width/2-110, height/2+30);
      noLoop();
    }
    collideWithBlocks();
  }
  void run(){
    build();
    move();
    bounce();
  }
  
  
  
}

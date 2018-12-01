ArrayList<Block> blocks;
int x = 250;
int bally;
int ballx;
boolean game = false;
Ball b = new Ball(275,400);
PImage img;



void setup(){
  img = loadImage("brick.jpg");
  
  
  size(600,600);
  b = new Ball(275,275);
  blocks = new ArrayList<Block>();
  
  int i=0;
  for(int x=10;x<500; x+=120){
    
    blocks.add(new Block(x,50,i));
    i++;
  }
}
void draw(){
  
  image(img, 0, 0, width, height);
  background(#18C6DB);
  fill(#24DB18);
  rect(mouseX, 500, 100, 50);
  b.run();
  
  ArrayList<Block> temp = new ArrayList<Block>();
  for(Block b: blocks){
    if(!b.there){
      temp.add(b);
    }
    b.build();
  }
  for(Block b: temp){
    blocks.remove(b);
  }
  if(blocks.isEmpty()){
    fill(0);
    textSize(100);
    text("You Win!", width/9, height/2);
    textSize(20);
    text("press enter to play again", (width/2)-110, height/2+30);
    noLoop();
  }
}
  
void keyPressed(){
  loop();
  if(key==ENTER){
    setup();
  }
}

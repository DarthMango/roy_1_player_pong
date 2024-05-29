Ball bll;
Paddle Paddle;
int gameState;
int score = 0;
ArrayList<Bricks> brickslist;

void setup(){
  size(1024,768);
  background(0);
  smooth();
  bll = new Ball (0,0,1,2,color(random(255),random(255),random(255)));//creates a ball that will bounce around the screen
  rectMode(CENTER);
  Paddle = new Paddle (height,120,30);//creates the paddle that will hit the ball into the bricks
  brickslist = new ArrayList<Bricks>();//create an empty array list
  brickslist.add(new Bricks (0,0,90,30));
}

void draw(){
  if(gameState==0){
    background(0);
    textSize(50);
    text("PRESS ANY KEY TO START ", 200, 384);
    if(keyPressed){
      gameState=1;
      }
    }
  if(gameState==1){
background(0);
for (int i = brickslist.size()-1; i>=0; i--){
 brickslist.get(i).display();
 //if(brickslist.finished()){
 //  brickslist.remove;
 //}
}
bll.move();//lets the ball move
bll.bounce();//allows ball to bounce off the edges
bll.display();//displays the ball
Paddle.move();//paddle is allowed to move
  Paddle.display();//displays the paddle
textSize(20);
text("score: " + score, 20, 20); 
 if((bll.yposition)<=-750){
   gameState=2;
 }
   if(bll.yposition<0){
   score += 1;
   }
  }
  if(gameState==2){
    background(0);
    textSize(104);
    text("GAME OVER ", 212, 384);
  }
}

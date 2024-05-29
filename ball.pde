class Ball{
 float xposition;
 float yposition;
 float xspeed;
 float yspeed;
 color c;
//all the code for the class goes here
  Ball(float xpos,float ypos, float xsp,float ysp, color c1){
    xposition = xpos;
    yposition = ypos;
    xspeed = xsp;
    yspeed = ysp;
    c = c1;
    ysp = 2;
    xsp = 2;
  }
  void move() {
    xposition = xposition + xspeed;// Change the x location by speed
    yposition = yposition + yspeed;
  }
//A function to void bounce the ball
  void bounce() {
    if ((xposition > width) || (xposition < 0)) {
      xspeed = xspeed *  -1;
    }
    if ((yposition > height) || (yposition <0)) {
      yspeed = yspeed * -1;
    }
    if ((yposition > height)) {
    gameState=2;
  }
    if ((yposition >680) && (xposition<mouseX+50)){
      yspeed = yspeed * -1; 
    }
  }

//A function to display the ball
  void display() {
    stroke(0);
    fill(c);
    ellipse(xposition,yposition,32,32);
  }
}

class Bricks{
 float hgt;
 float wdth;
 float x;
 float y;
 Bricks(float tempx,float tempy, float tempwdth, float temphgt){
    hgt = temphgt;
    wdth = tempwdth;
    x = tempx;
    y = tempy;
  }
  void display(){
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x,y,wdth,hgt);
  }
}

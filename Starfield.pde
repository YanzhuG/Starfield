Particle[] s = new Particle[100];
//boolean start = false;//your code here
void setup()
{
  size(510, 510);
  background(0);
  frameRate(50);
  for (int x=0; x<s.length; x++)
    s[x]=new Particle();
  s[0]=new OddballParticle();  
  //your code here
}
void draw()
{
  fill(0,0,0,90);
    rect(0, 0, 510, 510);
  for (int x=0; x<s.length; x++)
  {
    s[x].move();
    s[x].show();
  }  //your code here
}
class Particle
{
  double myX, myY, myAng, mySpe;
  int myCol;
  Particle() {
    myX=255;
    myY=230;
    myAng=Math.random()*2*Math.PI;
    mySpe=(int)(Math.random()*10);
    myCol=color((int)(myX/2), (int)(myY/2), (int)(Math.random()*256));
  }
  void move() {
    myX=myX+cos((float)myAng)*mySpe;
    myY=myY+sin((float)myAng)*mySpe;
    //your code here
  }
  void show()
  {
    fill(255);
    ellipse((float)myX, (float)myY, 2, 2);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  double myY;
  OddballParticle(){
    myY=255;
  }
  void show()
  {
    stroke(255);
    noFill();
    ellipse(255,255,(float)myX,(float)myY);//your code here
}
}

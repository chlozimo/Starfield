Particle[] aBunch = new Particle[100];
void setup()
{
  size(500, 500);
  for(int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new NormalParticle();
  }
  aBunch[0] = new Oddball();
  aBunch[1] = new Jumbo();
}
void draw()
{
  background(0, 0, 0);
  for ( int j = 0; j<aBunch.length; j++)
  {
    aBunch[j].move();
    aBunch[j].show();
  }
}
class NormalParticle implements Particle
{
  int myColor;
  double mySpeed, myTheta, myX, myY;
  NormalParticle()
  {
    myColor = color((int)(Math.random()*50), (int)(Math.random()*50),(int)(Math.random()*256));
    myX = 450;
    myY = 0;
    mySpeed = Math.random()*10;
    myTheta = 2.03;
  }
  public void move()
  {
    myX = myX + Math.cos(myTheta)* mySpeed;
    myY = myY + Math.sin(myTheta)* mySpeed;
  }

  public void show()
  {
     noFill();
    fill(myColor);
    ellipse((int)myX,(int)myY,(int)(Math.random()*50),(int)(Math.random()*50));
  }
}
interface Particle 
{  
  public void move();  
  public void show();
}
class Oddball implements Particle
{
  int myX, myY, mySpeed;
  double myTheta;
  Oddball(){
    myX = myY = 250;
  }
  void move(){
    
  }
  void show(){
    rect(myX ,myY, 50,50);
  }

}
class Jumbo extends NormalParticle
{
   public void show()
  {
     noFill();
    fill(myColor);
    ellipse((int)myX,(int)myY,100,100);
  }
}

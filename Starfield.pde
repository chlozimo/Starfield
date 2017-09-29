//your code here
void setup()
{
  //your code here
}
void draw()
{
  //your code here
}
class NormalParticle
{
  int myColor;
  double mySpeed, myTheta, myX, myY;
   NormalParticle(int x, int y)
   {
     myX = 320;
     myY = 240;
     mySpeed = Math.random()*10;
     myTheta = 2.03;
   }
   void move()
   {
    myX = myX + Math.cos(dTheta)* mySpeed;
   myY = myY +  Math.sin(dTheta)* mySpeed;
   }
   
   void show()
   {
   ellipse(myX,myY,50,50);  
   
   }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}


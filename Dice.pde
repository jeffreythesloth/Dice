void setup()
{
   size(500,500);
   textAlign(CENTER);
   noLoop();
}
void draw()
{
   background(255,168,5);
   textSize(50);
   text("Total:",200,480);
   int count = 0;
   for(int y = 15; y <= 400; y = y + 70)
   {
     for(int x = 15; x <= 480; x = x + 60)
     {
       Die bob = new Die(x,y);
       bob.roll();
       bob.show();
       count = count + bob.dRandom;
     }
   }
   text(count,310,480);
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    int dRandom, myX, myY;
    Die(int x, int y) //constructor
    {
      myX = x;  
      myY = y;
    }
    void roll()
    {
      dRandom = (int)(Math.random()*6)+1;
    }
    void show()
    {
      noStroke();
      fill(0);
      rect(myX,myY,50,50);
      if (dRandom == 1)
      {
        fill(255);
        ellipse(myX+25,myY+25,10,10);
      }
      else if (dRandom == 2)
      {
        fill(255);
        ellipse(myX+18,myY+25,10,10);
        ellipse(myX+34,myY+25,10,10);
      }
      else if (dRandom == 3)
      {
        fill(255);
        ellipse(myX+15,myY+15,10,10);
        ellipse(myX+25,myY+25,10,10);
        ellipse(myX+35,myY+35,10,10);
      }
      else if (dRandom == 4)
      {
        fill(255);
        ellipse(myX+18,myY+18,10,10);
        ellipse(myX+18,myY+34,10,10);
        ellipse(myX+34,myY+18,10,10);
        ellipse(myX+34,myY+34,10,10);
      }
      else if (dRandom == 5)
      {
        fill(255);
        ellipse(myX+25,myY+25,10,10);
        ellipse(myX+15,myY+15,10,10);
        ellipse(myX+15,myY+37,10,10);
        ellipse(myX+37,myY+15,10,10);
        ellipse(myX+37,myY+37,10,10);
      }
      else if (dRandom == 6)
      {
        fill(255);
        ellipse(myX+15,myY+20,10,10);
        ellipse(myX+26,myY+20,10,10);
        ellipse(myX+37,myY+20,10,10);
        ellipse(myX+15,myY+34,10,10);
        ellipse(myX+26,myY+34,10,10);
        ellipse(myX+37,myY+34,10,10);
      }
    }
}


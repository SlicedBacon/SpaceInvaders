public class Ship
{
  PImage shipImage;
  private int scaleFactor = 10;
  private int cx = 200;
  private int cy = 800;
  private int collisionRadius = 15;
  private boolean canDraw = true;
  public Ship()
  {
    shipImage = loadImage("ship.png");
  }
  
  //accessor methods
  int getCollisionRadius()
  {
    return collisionRadius;
  }
  
  int getScalefactor()
  {
    return scaleFactor;
  }
  
  int getcx()
  {
    return cx;
  }
  
  int getcy()
  {
    return cy;
  }
  
  //modifer methods
  void switchCanDraw()
  {
    if(canDraw == true)
    {
     canDraw = false; 
    }
    else
    {
      canDraw = true;
    }
  }
  
  void setCollisionRadius(int collisionRadiusIn)
  {
    collisionRadius = collisionRadiusIn;
  }
  
  void setcx(int cxIn)
  {
    cx = cxIn;
  }
  
  void setcy(int cyIn)
  {
    cy = cyIn;
  }
  
  void setScaleFactor(int scaleFactorIn)
  {
    scaleFactor = scaleFactorIn;
  }
  //general methods
  
  //draws the ship
  void drawShip()
{
  //draw fighter
  image(shipImage, cx - 32, cy - 64);
}

//act method triggers every draw cycle. controls the behavior of ship.
void act()
{
  if(canDraw == true)
  {
  cx = mouseX;
  drawShip();
  }
}
}

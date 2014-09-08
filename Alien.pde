public class Alien
{
  PImage alienImage;
  private int cx = 200;
  private int cy = 200;
  private int scaleFactor = 10;
  private int collisionRadius = 30;
  private int fireTimer = 50;
  //Alien constructors
  public Alien()
  {
    
  }
  
  public Alien(int cxIn, int cyIn)
  {
    alienImage = loadImage("alien.png");
    cx = cxIn;
    cy = cyIn;
    
  }
  
  //accessor methods
  int getCollisionRadius()
  {
    return collisionRadius;
  }
  
  int getcx()
  {
   return cx; 
  }
  
  int getcy()
  {
    return cy;
  }
  
  int getScaleFactor()
  {
    return scaleFactor;
  }
  
  //modifier methods
  void setCollisionRadius(int collisionRadiusIn)
  {
    collisionRadius = collisionRadiusIn;
  }
  
  void setScaleFactor(int scaleFactorIn)
  {
    scaleFactor = scaleFactorIn;
  }
  
  void setcx(int cxIn)
  {
    cx = cxIn;
  }
  
  void setcy(int cyIn)
  {
    cy = cyIn;
  }
  
  void drawAlien()
  {
    //draw alien
    image(alienImage, cx - 32, cy - 32);
  }
  
  void moveTowardsShip()
  {
    //moves toward the ship under the appropriat conditions
    if(ship.getcx() < cx)
    {
      cx -= 1;
    }
    if(ship.getcx() > cx)
    {
      cx += 1;
    }
  }
  
  void fire()
  {
    AlienBullet alienBullet = new AlienBullet(cx, cy, 10);
    alienBullets.add(alienBullet);
  }
  void act()
  {
    fireTimer -= 1;
    drawAlien();
    moveTowardsShip();
    if(fireTimer <= 0)
    {
      fire();
      fireTimer = 50;
    }
    cy += 1;
  }
}

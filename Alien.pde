public class Alien
{
  private int cx = 200;
  private int cy = 200;
  private int scaleFactor = 10;
  private int collisionRadius = 25;
  private int fireTimer = 50;
  //Alien constructors
  public Alien()
  {
    
  }
  
  public Alien(int cxIn, int cyIn)
  {
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
//draw dome on ship
triangle(cx - (scaleFactor * 3), cy - (1 * scaleFactor), cx, cy - (3 * scaleFactor), cx + (3 * scaleFactor), cy - (1 * scaleFactor));
//draw main body
rect(cx - (3 * scaleFactor), cy - (1 * scaleFactor), 6 * scaleFactor, 3 * scaleFactor);
//draw left side
line(cx - (3 * scaleFactor), cy + (2 * scaleFactor), cx - (4 * scaleFactor), cy + (2 * scaleFactor));
line(cx - (4 * scaleFactor), cy + (2 * scaleFactor), cx - (5 * scaleFactor), cy + (3 * scaleFactor));
//draw right side
line(cx + (3 * scaleFactor), cy + (2 * scaleFactor), cx + (4 * scaleFactor), cy + (2 * scaleFactor));
line(cx + (4 * scaleFactor), cy + (2 * scaleFactor), cx + (5 * scaleFactor), cy + (3 * scaleFactor));
//draw bottom
line(cx - (5 * scaleFactor), cy + (3 * scaleFactor), cx + (5 * scaleFactor), cy + (3 * scaleFactor));
//draw filler lines
line(cx + (3 * scaleFactor), cy - (1 * scaleFactor), cx + (2 * scaleFactor), cy + (2 * scaleFactor));
line(cx + (2 * scaleFactor), cy - (1 * scaleFactor), cx + (1 * scaleFactor), cy + (2 * scaleFactor));
line(cx + (1 * scaleFactor), cy - (1 * scaleFactor), cx, cy + (2 * scaleFactor));
line(cx, cy - (1 * scaleFactor), cx - (1 * scaleFactor), cy + (2 * scaleFactor));
line(cx - (1 * scaleFactor), cy - (1 * scaleFactor), cx - (2 * scaleFactor), cy + (2 * scaleFactor));
line(cx - (2 * scaleFactor), cy - (1 * scaleFactor), cx - (3 * scaleFactor), cy + (2 * scaleFactor));
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

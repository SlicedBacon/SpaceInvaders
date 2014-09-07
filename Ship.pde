public class Ship
{
  private int scaleFactor = 10;
  private int cx = 200;
  private int cy = 375;
  private int lives = 3;
  private int collisionRadius = 25;
  
  public Ship()
  {
    
  }
  
  //accessor methods
  int getCollisionRadius()
  {
    return collisionRadius;
  }
  
  int getLives()
  {
    return lives;
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
  void setCollisionRadius(int collisionRadiusIn)
  {
    collisionRadius = collisionRadiusIn;
  }
  
  void setLives(int livesIn)
  {
    lives = livesIn;
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
  //draws the ship
  void drawShip()
{
  //draw fighter
  
  //cockpit
  ellipse(cx,cy,scaleFactor * 2,scaleFactor * 2);
//left gun
rect(cx - (scaleFactor * 3),cy - (scaleFactor * 3),1 * scaleFactor,5 * scaleFactor);
//right gun
rect(cx + (scaleFactor * 2),cy - (3 * scaleFactor),1 * scaleFactor,5 * scaleFactor);
//nose of the plane
line(cx, cy - (5 * scaleFactor), cx + (2 * scaleFactor), cy - (1 * scaleFactor));
line(cx, cy - (5 * scaleFactor), cx - (2 * scaleFactor), cy - (1 * scaleFactor));
//left wing
line(cx - (3 * scaleFactor), cy - (1 * scaleFactor), cx - (5 * scaleFactor), cy + (1 * scaleFactor));
line(cx - (5 * scaleFactor), cy + (1 * scaleFactor), cx - (5 * scaleFactor), cy + (2 * scaleFactor));
line(cx - (5 * scaleFactor), cy + (2 * scaleFactor), cx - (3 * scaleFactor), cy + (2 * scaleFactor));
//right wing
line(cx + (3 * scaleFactor), cy - (1 * scaleFactor), cx + (5 * scaleFactor), cy + (1 * scaleFactor));
line(cx + (5 * scaleFactor), cy + (1 * scaleFactor), cx + (5 * scaleFactor), cy + (2 * scaleFactor));
line(cx + (5 * scaleFactor), cy + (2 * scaleFactor), cx + (3 * scaleFactor), cy + (2 * scaleFactor));
//left back wing
line(cx - (2 * scaleFactor), cy + (2 * scaleFactor), cx - (5 * scaleFactor), cy + (5 * scaleFactor));
line(cx - (5 * scaleFactor), cy + (5 * scaleFactor), cx - (1 * scaleFactor), cy + (5 * scaleFactor));
line(cx - (1 * scaleFactor), cy + (5 * scaleFactor), cx, cy + (3 * scaleFactor));
//right back wing
line(cx + (2 * scaleFactor), cy + (2 * scaleFactor), cx + (5 * scaleFactor), cy + (5 * scaleFactor));
line(cx + (5 * scaleFactor), cy + (5 * scaleFactor), cx + (1 * scaleFactor), cy + (5 * scaleFactor));
line(cx + (1 * scaleFactor), cy + (5 * scaleFactor), cx, cy + (3 * scaleFactor));
}

//act method triggers every draw cycle. controls the behavior of ship.
void act()
{
  cx = mouseX;
  drawShip();
}
}

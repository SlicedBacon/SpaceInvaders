public class Bullet
{
  private int cx = 0;
  private int cy = 0;
  private int scaleFactor = 10;
  private int speed = 0;
  private boolean collided = false;
  public Bullet(int cxIn, int cyIn, int scaleFactorIn)
  {
    cx = cxIn;
    cy = cyIn;
    scaleFactor = scaleFactorIn;
  }
  //accessor methods
  int getSpeed()
  {
    return speed;
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
  void setSpeed(int speedIn)
  {
    speed = speedIn;
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
  void drawBullet()
  {
    rect(cx - (1 * scaleFactor), cy - (2 * scaleFactor), 1 * scaleFactor, 1 * scaleFactor);
  }
  
  
  boolean collided()
  {
    if(collided == true)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  void act()
  {
    drawBullet();
    cy -= 10;
  }
}

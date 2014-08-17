Ship ship;
Alien alien;
void setup()
{
  size(400, 400);
  ship = new Ship();
  alien = new Alien();
}

void draw()
{
  
}
public class Ship
{
  private int scaleFactor = 10;
  private int cx = 200;
  private int cy = 200;
  
  public Ship()
  {
    
  }
  
  //accessor methods
  void getScalefactor()
  {
    
  }
  
  void getcx()
  {
    
  }
  
  void getcy()
  {
    
  }
  
  //modifier methods
  void setScaleFactor()
  {
    
  }
  
  void setcx()
  {
    
  }
  
  void setcy()
  {
    
  }
  void drawShip()
{
  background(255);
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
void act()
{
  
}
}
public class Alien
{
  int cx = 200;
  int cy = 200;
  int alienScaleFactor = 10;
  //Alien constructor
  public Alien()
  {
    
  }
  
  //accessor methods
  void getcx()
  {
    
  }
  
  void getcy()
  {
    
  }
  
  void getScaleFactor()
  {
    
  }
  
  //modifier methods
  void drawAlien()
  {
    //draw alien
//draw dome on ship
triangle(cx - (alienScaleFactor * 3), cy - (1 * alienScaleFactor), cx, cy - (3 * alienScaleFactor), cx + (3 * alienScaleFactor), cy - (1 * alienScaleFactor));
//draw main body
rect(cx - (3 * alienScaleFactor), cy - (1 * alienScaleFactor), 6 * alienScaleFactor, 3 * alienScaleFactor);
//draw left side
line(cx - (3 * alienScaleFactor), cy + (2 * alienScaleFactor), cx - (4 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx - (4 * alienScaleFactor), cy + (2 * alienScaleFactor), cx - (5 * alienScaleFactor), cy + (3 * alienScaleFactor));
//draw right side
line(cx + (3 * alienScaleFactor), cy + (2 * alienScaleFactor), cx + (4 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx + (4 * alienScaleFactor), cy + (2 * alienScaleFactor), cx + (5 * alienScaleFactor), cy + (3 * alienScaleFactor));
//draw bottom
line(cx - (5 * alienScaleFactor), cy + (3 * alienScaleFactor), cx + (5 * alienScaleFactor), cy + (3 * alienScaleFactor));
//draw filler lines
line(cx + (3 * alienScaleFactor), cy - (1 * alienScaleFactor), cx + (2 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx + (2 * alienScaleFactor), cy - (1 * alienScaleFactor), cx + (1 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx + (1 * alienScaleFactor), cy - (1 * alienScaleFactor), cx, cy + (2 * alienScaleFactor));
line(cx, cy - (1 * alienScaleFactor), cx - (1 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx - (1 * alienScaleFactor), cy - (1 * alienScaleFactor), cx - (2 * alienScaleFactor), cy + (2 * alienScaleFactor));
line(cx - (2 * alienScaleFactor), cy - (1 * alienScaleFactor), cx - (3 * alienScaleFactor), cy + (2 * alienScaleFactor));
  }
  
  void act()
  {
    
  }
}

public class Bullet
{
  int cx = 0;
  int cy = 0;
  int scaleFactor = 10;
  public Bullet()
  {
    
  }
  
  void drawBullet()
  {
    rect(cx - (1 * scaleFactor), cy - (2 * scaleFactor), 1 * scaleFactor, 4 * scaleFactor);
  }
  
  void act()
  {
    
  }
}


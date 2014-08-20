Ship ship;
Alien alien;
SpawnDirector director;
void setup()
{
  size(400, 400);
  ship = new Ship();
  alien = new Alien();
  director = new SpawnDirector();
}

void draw()
{
  ship.act();
  alien.act();
}
public class Ship
{
  private int scaleFactor = 10;
  private int cx = 200;
  private int cy = 200;
  private int lives = 3;
  
  public Ship()
  {
    
  }
  
  //accessor methods
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

//fire method
void fire()
{
  Bullet leftBullet = new Bullet(cx - 3, cy, 10);
  Bullet rightBullet = new Bullet(cx + 3, cy, 10);
  leftBullet.act();
  rightBullet.act();
}
//act method triggers every draw cycle. controls the behavior of ship.
void act()
{
  drawShip();
}
}

public class Alien
{
  private int cx = 200;
  private int cy = 200;
  private int scaleFactor = 10;
  //Alien constructor
  public Alien()
  {
    
  }
  
  //accessor methods
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
  
  void act()
  {
    drawAlien();
  }
}

public class Bullet
{
  private int cx = 0;
  private int cy = 0;
  private int scaleFactor = 10;
  private int speed = 0;
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
  
  void act()
  {
    drawBullet();
  }
}


public class SpawnDirector
{
  private int spawnTimer = 0;
  private int killTimer = 0;
  private int killFrequency = 0;
  
  ArrayList<Alien> aliens = new ArrayList<Alien>();
  
  //accessor methods
  int getSpawnTimer()
  {
    return spawnTimer;
  }
  
  int getKillTimer()
  {
    return killTimer;
  }
  
  int getKillFrequency()
  {
    return killFrequency;
  }
  
  //modifier methods
  void setSpawnTimer(int spawnTimerIn)
  {
    spawnTimer = spawnTimerIn;
  }
  
  void setKillTimer(int killTimerIn)
  {
    killTimer = killTimerIn;
  }
  
  void setKillFrequency(int killFrequencyIn)
  {
    killFrequency = killFrequencyIn;
  }
  
  //constructor
  public SpawnDirector()
  {
    
  }
}

public class ParticleDirector
{
  private int effectDuration = 0;
  private int particleCount = 0;
  
  //accessor methods
  int getEffectDuration()
  {
    return effectDuration;
  }
  
  int getParticleCount()
  {
    return effectDuration;
  }
  
  //modifier methods
  void setEffectDuration(int effectDurationIn)
  {
    effectDuration = effectDurationIn;
  }
  
  void setParticleCount(int particleCountIn)
  {
    particleCount = particleCountIn;
  }
  
  //constructor
  public ParticleDirector()
  {
    
  }
  
  void applyEffect(int xIn, int yIn)
  {
    
  }
  
}

public class Particle
{
  public Particle()
  {
    
  }
}

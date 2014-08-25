Ship ship;
SpawnDirector director;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Alien> aliens = new ArrayList<Alien>();
final int scaleFactor = 10;
final int alienSpawnRate = 100;
void setup()
{
  background(255);
  size(400, 400);
  ship = new Ship();
  director = new SpawnDirector(alienSpawnRate);
}

void draw()
{
  background(255);
  ship.act();
  director.act();
  
  //checks to see if any ship bullets are on screen and makes them act
  for(Bullet b: bullets)
{
  b.act();
}  

//gets the aliens in the horde to act
for(Alien a : aliens)
{
  a.act();
}
}

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == LEFT)
    {
      ship.setcx(ship.getcx() - 10);
    }
    if(keyCode == RIGHT)
    {
      ship.setcx(ship.getcx() + 10);
    }
}
if(key == 'x' || key == 'X')
{
  Bullet shipBullet = new Bullet(ship.getcx(), ship.getcy(), 10);
  bullets.add(shipBullet);
}
}

Ship ship;
SpawnDirector director;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
final int scaleFactor = 10;
void setup()
{
  background(255);
  size(400, 400);
  ship = new Ship();
  director = new SpawnDirector();
}

void draw()
{
  background(255);
  ship.act();
  director.act();      
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
}
}

Ship ship;
SpawnDirector director;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Alien> aliens = new ArrayList<Alien>();
ArrayList<AlienBullet> alienBullets = new ArrayList<AlienBullet>();
final int scaleFactor = 10;
final int alienSpawnRate = 50;
int score = 0;
boolean gameOver = false;
void setup()
{
  background(000);
  size(600, 800);
  ship = new Ship();
  director = new SpawnDirector(alienSpawnRate);
}

void draw()
{
  if(gameOver == false)
  {
  background(000);
  
  ship.act();
  director.act();
  
  for(AlienBullet ab : alienBullets)
  {
    ab.act();
    if(checkAlienBulletHit(ship, ab) == true)
    {
      alienBullets.remove(ab);
      gameOver();
      break;
    }
  }
  
//gets the aliens in the horde to act
for(Alien a : aliens)
{
  a.act();
  if(checkAlienHit(ship, a) == true)
  {
    aliens.remove(a);
    gameOver();
    break;
  }
}
  if(bullets.size() > 0)
  {
  Bullet b = bullets.get(bullets.size() - 1);
  b.act();
  for(Alien a : aliens)
  {
    if(checkBulletHit(b, a) == true)
    {
      score++;
      bullets.remove(b);
      aliens.remove(a);
      break;
    }
  }
  }
  }
}

void mousePressed()
{
  Bullet shipBullet = new Bullet(ship.getcx(), ship.getcy(), 10);
  bullets.add(shipBullet);
}

boolean checkBulletHit(Bullet bullet, Alien alien)
{
  int bx = bullet.getcx();
  int by = bullet.getcy();
  
  int ax = alien.getcx();
  int ay = alien.getcy();
  
  int distance = (int) (Math.sqrt(Math.pow((bx - ax), 2) + Math.pow((by - ay), 2)));
  
  if(distance <= (alien.getCollisionRadius() + bullet.getCollisionRadius()))
  {
    return true;
  }
  else
  {
    return false;
  }
}

boolean checkAlienHit(Ship ship, Alien alien)
{
  int sx = ship.getcx();
  int sy = ship.getcy();
  
  int ax = alien.getcx();
  int ay = alien.getcy();
  
  int distance = (int) (Math.sqrt(Math.pow((sx - ax), 2) + Math.pow((sy - ay), 2)));
  
  if(distance <= (alien.getCollisionRadius() + ship.getCollisionRadius()))
  {
    return true;
  }
  else
  {
    return false;
  }
}


boolean checkAlienBulletHit(Ship ship, AlienBullet alienBullet)
{
  int sx = ship.getcx();
  int sy = ship.getcy();
  
  int abx = alienBullet.getcx();
  int aby = alienBullet.getcy();
  
  int distance = (int) (Math.sqrt(Math.pow((sx - abx), 2) + Math.pow((sy - aby), 2)));
  
  if(distance <= (alienBullet.getCollisionRadius() + ship.getCollisionRadius()))
  {
    return true;
  }
  else
  {
    return false;
  }
}

void gameOver()
{
  ship.switchCanDraw();
  director.switchCanSpawn();
  aliens.clear();
  alienBullets.clear();
  bullets.clear();
  System.out.println(score);
  gameOver = true;
  textSize(50);
  fill(255, 255, 255);
  text("Score: " + score, 100, 100);
}

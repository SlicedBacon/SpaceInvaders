Ship ship;
SpawnDirector director;
void setup()
{
  size(400, 400);
  ship = new Ship();
  director = new SpawnDirector();
}

void draw()
{
  ship.act();
  director.act();
}

public class SpawnDirector
{
  private int spawnTimer = 0;
  private int killTimer = 0;
  private int killFrequency = 0;
  
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
  
  //constructor with appropriate parameters
  public SpawnDirector(int spawnTimerIn)
  {
   spawnTimer = spawnTimerIn;
  }
  
  void act()
  {
    spawnTimer -= 1;
    if(spawnTimer <= 0)
    {
      Alien alien = new Alien((int) (Math.random() * width), 0);
      aliens.add(alien);
      spawnTimer = alienSpawnRate;
    }
  }
}

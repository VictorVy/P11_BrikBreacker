class Ball
{
  float x, y;
  float speedX, speedY;
  int size;
  
  public Ball(float x, float y, float speedX, float speedY, int size)
  {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    this.size = size;
  }
  
  void move()
  {
    fill(0);
    noStroke();
    ellipse(x, y, size, size);
    
    x += speedX;
    y += speedY;
    
    if(x <= 0 + size / 2)
    {
      speedX = abs(speedX);
    }
    else if(x >= width - size / 2)
    {
      speedX = -abs(speedX);
    }
    if(y <= 0 + size / 2)
    {
      speedY = abs(speedY);
    }
    else if(y >= height - size / 2)
    {
      speedY = -abs(speedY);
    }
    
    if(dist(x, y, player.x, player.y) < (size / 2 + player.size / 2))
    {
      speedX = (x - player.x) / 9;
      speedY = (y - player.y) / 9;
    }
  }
}

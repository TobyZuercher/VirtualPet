void setup()
{
  size(400, 400);
  background(50);
  strokeWeight(3);
  colorMode(HSB, 360, 100, 100);
  scalesGen();
}

void draw()
{
  
}

boolean f = false;
void scalesGen()
{
  for(int y = 500; y > -40; y -= 45)
  {
    if(f == true)
      for(int x = -50; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     if(f == false)
      for(int x = -75; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     flip();
  }
}

void makeScale(int x, int y)
{
  fill(45 + (int)(Math.random() * 20 - 10), 100, 100);
  beginShape();
  vertex(x + 25, y - 15);
  vertex(x + 25, y + 15);
  vertex(x, y + 30);
  vertex(x - 25, y + 15);
  vertex(x - 25, y - 15);
  vertex(x, y - 30);
  endShape(CLOSE);
}

void flip()
{
  if(f == false) f = true;
  else f = false;
}

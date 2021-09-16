void setup()
{
  size(400, 400);
  background(50);
  strokeWeight(3);
  colorMode(HSB, 100, 100, 100);
  scalesGen();
}

int center = 20;
boolean cdown = false;

void draw()
{
  shade = 90;
  scalesGen();
  if(center >= 15) cdown = true;
  if(center <= 5) cdown = false;
  if(cdown == false) center += 1;
  else center -= 1;
  
}

boolean b = false;
int shade = 90;
void scalesGen()
{
  for(int y = 500; y > -80; y -= 30)
  {
    shade -= 100/21;
    if(b == true)
      for(int x = -50; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     if(b == false)
      for(int x = -75; x < 450; x += 50)
      {
        makeScale(x, y);
      }
     flip();
  }
}

void makeScale(int x, int y)
{
  if(mouseNear(x, y) == true) shade += 20;
  fill(0, 0, center);
  ellipse(x, y, 50, 50);
  fill(0, 0, shade);
  arc(x, y, 50, 50, radians(90), radians(210), OPEN);
  arc(x, y, 50, 50, radians(-30), radians(90), OPEN);
  arc(x + 25, y + 25, 50, 83, radians(179), radians(270), OPEN);
  arc(x - 25, y + 25, 50, 83, radians(-90), radians(1), OPEN);
  //bz(x, y);
  if(mouseNear(x, y) == true) shade -= 20;
}

void bz(int x, int y)
{
  noFill();
  bezier(x - 25, y - 25, x, y, x, y, x, y + 25);
  bezier(x + 25, y - 25, x, y, x, y, x, y + 25);
}

void flip()
{
  if(b == false) b = true;
  else b = false;
}

boolean mouseNear(int x, int y)
{
  if(Math.abs(x - mouseX) <= 50 && Math.abs(y - mouseY) <= 50) return true;
  else return false;
  // MAYBE MAKE INT FUNCTION FOR DISTANCE FROM X/Y???
}

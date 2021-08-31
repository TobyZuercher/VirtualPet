void setup() {
  size(800, 800);
  strokeWeight(3);
  background(155, 98, 198);
}


void draw()  {
  fill(255);
  stroke(150, 150);
  bezier(400, 400,  525, 375,  625, 475,  600, 600);
  bezier(400, 400,  300, 400,  200, 600, 600, 600);
  bezier(345, 400,  335, 325,  345, 300,  380, 250);
  bezier(345, 400,  390, 325,  385, 300,  380, 250);
  translate(325, 415);
  rotate(radians(-25));
  ellipse(0, 0, 125, 65);
  rotate(radians(25));
  translate(-325, -415);
  fill(0);
  stroke(0);
  ellipse(315, 405, 12, 9);
  ellipse(268, 433, 6, 6);
  stroke(150, 150);
  fill(255);
  ellipse(375, 575, 40, 100);
  ellipse(355, 615, 60, 30);
  ellipse(425, 575, 50, 100);
  ellipse(405, 615, 80, 30);
  ellipse(570, 600, 80, 50);
}

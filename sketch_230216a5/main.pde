planet sun;

void setup()
{
 size(1200,800); 
 sun = new planet(3);
 sun.size = 50;
 sun.dist = 0;
 sun.speed = 0;
 sun.col = color(255,100,0);
}

void draw()
{
  noStroke();
  fill(0,0,0,5);
  rect(0,0,width,height);
  translate(width/2,height/2);
  scale(0,6);
  sun.update();
  sun.draw();
}

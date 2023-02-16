planet first = new planet();

void setup()
{
 size(1200,800);   
}

void draw()
{
  noStroke();
  fill(0,0,0,5);
  rect(0,0,width,height);
  translate(width/2,height/2);
  
  first.draw();
  first.update();
}

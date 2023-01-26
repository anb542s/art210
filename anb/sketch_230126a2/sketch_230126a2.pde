float _cx = 0.1; // place for circle's position 
void setup()
{
  size(800,600); // screen size
}
void draw()
{
  noStroke(); // get rid of counter lines 
  fill(0); // paint it black
  rect(0,0,width,height); //
  fill(255); // paint it white
  circle(_cx,height/2,40); //the circle

  
  if(_cx > width)
  {
    _cx = 0.0;
  }
  else 
  {
    _cx = _cx + 1;
  }
}

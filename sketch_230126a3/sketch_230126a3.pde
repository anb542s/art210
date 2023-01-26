float _cx = 0.0; // place for circle's position 
float _cd = 10;
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
_cx = _cx + _cd;
  
  if(_cx > width || _cx < 0) // if curent position of the circle is...
  {
    _cd = _cd * (-1); // smaller equal the screen with set it to zero
  }
  
}

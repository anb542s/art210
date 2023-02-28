PVector location;
PVector velocity;
 
void setup() 
{
  size(500,500);
  background(0);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}

void draw() 
{
  noStroke();
  fill(color(0,0,20,10));
  rect(40,0,width,height);

  
  location.add(velocity);
 
   if ((location.x > width) || (location.x < 0)) 
   {
    velocity.x = velocity.x * -1;
    }
   if ((location.y > height) || (location.y < 0))
    {
    velocity.y = velocity.y * -1;
    }
   
  fill(255); 
  ellipse(location.x,location.y,16,16);


  

}

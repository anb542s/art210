Class Scene
{
  PImage bg = loadImage("bg.jpg");
  
  Scene()
  {
  bg.resize(width,height);
  }
  
  void display()
  {
  image(bg,0,0);
  }
}

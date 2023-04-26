class Sound
{
   PApplet app;
   SoundFile Drop;
   float soundLevel = 0;
   
   Sound(PApplet _app, String Drop)
   {
     this.app=_app;
     this.Drop = new SoundFile(this.app,Drop);
     this.Drop.loop();
   }
}

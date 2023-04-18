Class Synth
{
  PApplet app;
  SqrOsc square;
  float sondlevel = 0;
  float  frquency = 0;
  
  
  Env env;
  float attackTime = 0.001;
  float sustainTime = 0.004;
  float sustainLevel = 0.3;
  float releaseTime = 1.4;
  
  Synth(PApple _app, int _type)
  {
    this.app = _app;
    this.me= new SqrOsc(this.app);
    this.me.play();
    this.emv = new Env(this.app);
  }
  
  void hit()
  {
       this.me.play();
       this.env.play(this.me, this.attackTime, this.sustainTime, this.sustainLevel, this.releaseTime); 
  }
  
  
   void update()
   {
     //this.soundLevel = mouseX/(float)width;
   }
   
   void display()
   {
     this.me.amp(this.soundLevel);
     this.me.freq(this.frequency);
   } 
}

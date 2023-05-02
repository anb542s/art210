import processing.sound.*;
SoundFile file;
//SoundFile subfile;
import de.looksgood.ani.*;

Chick s;
int nRaindrop = 13;
Raindrop[] z = new Raindrop[nRaindrop];
boolean test = false; // test the collision box
PFont myfont;

String timeString = "000";
  int time;
  int initialTime;
  int interval = 1000;
  int totalTime = 10000;

static final int SPLASH = 0;
static final int PLAY = 1;
static final int LOSE = 2;
int gameState = SPLASH;

void setup()
{
  size(1200,800);
  //fullScreen();
  Ani.init(this);
  myfont = createFont("ribeye.ttf",100);
  gameStateChange(SPLASH);
  initialTime = millis();
  
    file = new SoundFile(this, "ducks-at-the-lake-18260.wav");
    file.loop();
  
 //subfile = new SoundFile(this, "drop-sound.wav");
 //file.cue(3.5);
 //file.play();
  
}

void draw()
{
  if(gameState == SPLASH) splash_run();
  if(gameState == PLAY) game_run();
  if(gameState == LOSE) LOSE_run();
  
  if (millis() - initialTime > interval)
  {
    time = int(millis()/1000);
    timeString = nf(time, 3);
    initialTime = millis();
    textAlign(CENTER, 100);
  }
       fill(255);
       text(timeString, width/1.06, height/12);
       if (millis() >= totalTime)
       noLoop();
}

void keyPressed()
{
  if(gameState == SPLASH) splash_keyPressed();
  if(gameState == PLAY) game_keyPressed();
  if(gameState == LOSE) LOSE_keyPressed();
}

/*void mouseClicked()
{
  if(gameState == SPLASH) splash_mouseClicked();
  if(gameState == PLAY) game_mouseClicked(); 
  if(gameState == LOSE) LOSE_mouseClicked();
}*/

void gameStateChange(int state)
{
  gameState = state;
  if(gameState == SPLASH) splash_init();
  if(gameState == PLAY) game_init();
  if(gameState == LOSE) LOSE_init();
}

/*splash stuff begin---------------------------------*/
void LOSE_init()
{
  s = new Chick("test");
}

void LOSE_run()
{
  //background(0,0,0);
  //fill(255,255,255);
  textAlign(CENTER);
  textSize(50);
  text("Your feathers got wet :(",width/2, height/2);
  textAlign(CENTER);
  textSize(40);
  fill(255);
  text("Press ANY key to try again", width/2, height-300);
}

void LOSE_keyPressed()
{
  gameStateChange(PLAY);
}

void LOSE_mouseClicked()
{

}

/*splash stuff end-00--------------------------------*/

/*splash stuff begin---------------------------------*/
void splash_init()
{
  s = new Chick("test");
}

void splash_run()
{
  background(112,181,255); //beginning display
  textFont(myfont);
  textAlign(CENTER);
  textSize(100);
  text("Oh no, it's raining!",width/2, height/2);
  textSize(40);
  fill(255);
  text("Press ANY key to Start",width/2,height/2+100);
  s.display();
}

void splash_keyPressed()
{
  gameStateChange(PLAY);
}

void splash_mouseClicked()
{
  
}

/*splash stuff end-00--------------------------------*/


/*game stuff begin---------------------------------*/
void game_init()
{
  s = new Chick("test");
  for(int i =0; i < nRaindrop; i =  i + 1)
  {
    z[i] = new Raindrop("Raindrop"+i);
  }   
}

void game_run() //background boxes 
{
  background(201,236,255);
  //fill(230);
  //rect(100,100,width-200,height-200);
  fill(142,166,144);
  rect(0,height/2+242,width, 300);
  s.display();
  s.update();
  s.check();
  for(int i =0; i < nRaindrop; i =  i + 1)
    {
      z[i].display();
      z[i].update();
      z[i].check();
    }  
}

void game_keyPressed()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
}

/*game stuff end---------------------------------*/

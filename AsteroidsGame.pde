//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(400, 400);
  background(0);
  for (int i = 0; i < nightSky.length; i ++)
  {
    nightSky[i] = new Star();
  }
  myXSpeed = 0;
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < nightSky.length; i ++)
  {
    nightSky[i].show();
  }
}

public void keyPressed(){
  if (keyCode == UP){
    bob.accelerate(.2);
  }
   if (key == 'h'){
  bob.hyperspace();
 }
  if(keyCode==LEFT){
    bob.turn(-6);
  }
  if(keyCode == RIGHT){
    bob.turn(6);
  }
}


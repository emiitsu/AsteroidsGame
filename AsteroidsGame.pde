Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
//Asteroid joe = new Asteroid();
ArrayList <Asteroid> joe=new ArrayList <Asteroid>();
public void setup() 
{
  size(400, 400);
  background(0);
  for (int i = 0; i < nightSky.length; i ++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 20; i ++){
    joe.add(new Asteroid());
  }
   //myXSpeed = 0.5;
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < joe.size(); i ++){
  joe.get(i).show();
  joe.get(i).move();
   if (dist((float)(bob.getX()), (float)(bob.getY()), (float)(joe.get(i).getX()), (float)(joe.get(i).getY())) < 20){
   joe.remove(i);
  }
}
//  for (int i =0; i<joe.size(); i++){
     //joe.show();
     //super.move();
//  }
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


Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
//Asteroid joe = new Asteroid();
ArrayList <Asteroid> joe=new ArrayList <Asteroid>();
ArrayList <Bullet> mama = new ArrayList <Bullet>();
int life = 100;
int score = 0;

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
   life = life - 1;
  }
}

for(int i = 0; i <mama.size(); i ++){
    mama.get(i).show();
    mama.get(i).move();
}

for(int b=0;b<mama.size();b++){
    for(int j=0; j<joe.size(); j++){
      float shot = dist((float)mama.get(b).getX(),(float)mama.get(b).getY(),(float)joe.get(j).getX(),(float)joe.get(j).getY());
      if(shot<10){
        joe.remove(j);
        mama.remove(b);
        score++;
       break;
      }}}
//  for (int i =0; i<joe.size(); i++){
     //joe.show();
     //super.move();
//  }
  for (int i = 0; i < nightSky.length; i ++)
  {
    nightSky[i].show();
  }
    fill(255);
  textSize(20);
  textAlign(CENTER);
  text("Score:" + score, 55, 25);
  text("Life:" + life,55, 50);
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
 if(key==' '){
    mama.add(new Bullet(bob));
  }
}

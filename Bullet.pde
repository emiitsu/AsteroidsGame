class Bullet extends Floater
{
  private double dRadians;
  
  public Bullet(Spaceship daShip){
    myCenterX = daShip.getX();
    myCenterY = daShip.getY();
    myPointDirection = daShip.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myXspeed = 5 * Math.cos(dRadians) + daShip.getDirectionX();
    myYspeed = 5 * Math.sin(dRadians) + daShip.getDirectionY();
    
  }
public void move ()   
  {      
        
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    
  }   
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public double getX(){
    return (float)myCenterX;
  }
  public double getY(){
    return (float)myCenterY;
  }



}

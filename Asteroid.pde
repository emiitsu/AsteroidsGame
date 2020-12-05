class Asteroid extends Floater {
  private double rotateSpeed;
  public Asteroid() {
    rotateSpeed = (Math.random()*4)+1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random() * 7) -10;
    yCorners[0] = (int)(Math.random() * 3) -5;
    xCorners[1] = (int)(Math.random() * 6) + 2;
    yCorners[1] = (int)(Math.random() * 5) - 7;
    xCorners[2] = (int)(Math.random() * 10) +5;
    yCorners[2] = (int)(Math.random() * 10) - 10;
    xCorners[3] = (int)(Math.random() * 10) + 5;
    yCorners[3] = (int)(Math.random() * 5) + 8;
    xCorners[4] = (int)(Math.random() * 5) -7;
    yCorners[4] = (int)(Math.random() * 8) +5 ;
    xCorners[5] = (int)(Math.random() * 2) -3;
    yCorners[5] = (int)(Math.random() * 9) - 9;
    myCenterX = Math.random() * 400;
    myCenterY = Math.random() * 400;
    myXspeed = Math.random() * 5 - 3;
    myYspeed = Math.random() * 5 - 3;
    myColor = color((int)(Math.random()*100) + 70);
    myPointDirection = Math.random() * 360;
  }
  
    public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }
  
  public void move()
  {
    turn(rotateSpeed);
    super.move();
  }


}

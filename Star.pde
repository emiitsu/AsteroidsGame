class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()* 500);
    myY = (int)(Math.random() * 500);
  }
  public void show(){
  noStroke();
    fill(250, 250, 150);
    ellipse(myX, myY, 3, 3);
  }
}

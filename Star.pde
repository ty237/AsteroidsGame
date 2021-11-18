class Star  //note that this class does NOT extend Floater
{
  private int myCenterX, myCenterY;
  public int getMyCenterX() {
    return (int)myCenterX;
  }
  public int getMyCenterY() {
    return (int)myCenterY;
  }
  public void setMyCenterX(int x) {
    myCenterX = x;
  }
  public void setMyCenterY(int y) {
    myCenterY = y;
  }
  public Star() {
    setMyCenterX((int)(Math.random()*500));
    setMyCenterY((int)(Math.random()*500));
  }
  public void show() {
    fill(0);
    ellipse(getMyCenterX(), getMyCenterY(), 10, 10);
  }
}

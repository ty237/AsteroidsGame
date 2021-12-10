class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getMyXSpeed();
    myYspeed = theShip.getMyYSpeed();
    myPointDirection = theShip.getMyPointDirection();
    accelerate(10.0);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move ()
  {        
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }  
  public boolean tooClose(int shipX, int shipY) {
    double distance = dist((float)myCenterX, (float)myCenterY, (float)shipX, (float)shipY);
    return distance < 20;
  }
}

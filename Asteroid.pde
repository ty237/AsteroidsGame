class Asteroid extends Floater {
  private double rotSpeed;
  Asteroid() {
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    int scaleFactor = 2;
    xCorners[0] = ((int)(Math.random()*2)+2)*scaleFactor;
    yCorners[0] = ((int)(Math.random()*2)+2)*scaleFactor;
    xCorners[1] = ((int)(Math.random()*3)+2)*scaleFactor;
    yCorners[1] = -((int)(Math.random()*6)+2)*scaleFactor;    
    xCorners[2] = -((int)(Math.random()*6)+3)*scaleFactor;
    yCorners[2] = -((int)(Math.random()*6)+3)*scaleFactor;    
    xCorners[3] = -((int)(Math.random()*4)+2)*scaleFactor;
    yCorners[3] = -((int)(Math.random()*3)+2)*scaleFactor;            
    myColor = 0;   
    myXspeed = (Math.random()*5)+2;
    myYspeed = (Math.random()*5)+2; 
    myPointDirection = 0;
    rotSpeed = (Math.random()*2)+3;
  }
  public boolean tooClose(int shipX, int shipY) {
    double distance = dist((float)myCenterX, (float)myCenterY, (float)shipX, (float)shipY);
    return distance < 20;
  }
  public void move(int shipX, int shipY) {
    turn(rotSpeed);
    super.move();
  }
}

class Spaceship extends Floater  
{   
  public int getMyCenterX() {
    return (int)myCenterX;
  }
  public void setMyXSpeed(int x) {
    myCenterX = x;
  }
  public void setMyYSpeed(int y) {
    myCenterY = y;
  }
  public int getMyXSpeed() {
    return (int)myXspeed;
  }
  public int getMyYSpeed() {
    return (int)myYspeed;
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
  public Spaceship() {
    corners = 15;
    xCorners = new int[corners];
    yCorners = new int[corners];
    int scaleFactor = 5;
    xCorners[0] = 5*scaleFactor;
    yCorners[0] = 0*scaleFactor;
    xCorners[1] = 2*scaleFactor;
    yCorners[1] = 2*scaleFactor;    
    xCorners[2] = -4*scaleFactor;
    yCorners[2] = 2*scaleFactor;    
    xCorners[3] = -4*scaleFactor;
    yCorners[3] = 1*scaleFactor;    
    xCorners[4] = -6*scaleFactor;
    yCorners[4] = 2*scaleFactor;          
    xCorners[5] = -6*scaleFactor;
    yCorners[5] = -2*scaleFactor;    
    xCorners[6] = -4*scaleFactor;
    yCorners[6] = -1*scaleFactor;    
    xCorners[7] = -4*scaleFactor;
    yCorners[7] = -2*scaleFactor;    
    xCorners[8] = 2*scaleFactor;
    yCorners[8] = -2*scaleFactor;    
    xCorners[9] = 5*scaleFactor;
    yCorners[9] = 0*scaleFactor;
    
    myColor = 128;   
    myCenterX = 200; 
    myCenterY = 200;
    myXspeed = 2;
    myYspeed = 2; 
    myPointDirection = 0;
  }
  
  public void hyperspace() {
    setMyXSpeed((int)(Math.random() * 13)-5); 
    setMyYSpeed((int)(Math.random() * 13)-5);
    setMyCenterY((int)(Math.random()*300) + 100);
    setMyCenterX((int)(Math.random()*300) + 100);
  }
  
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += (dAmount) * Math.cos(dRadians);    
    myYspeed += (dAmount) * Math.sin(dRadians);     
    if (myXspeed > 20) myXspeed = 20;
    if (myYspeed > 20) myYspeed = 20;
    if (myXspeed < -20) myXspeed = -20;
    if (myYspeed < -20) myYspeed = -20;
  }  
}

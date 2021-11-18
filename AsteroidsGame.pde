Spaceship bob = new Spaceship();
Star[] stars = new Star[40];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(100, 210, 40);
  bob.show();
  bob.move();
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
}
public void keyPressed() {
  if (key == 'a') {
    bob.turn(-10);
  } else if(key == 'd') {
    bob.turn(10);
  } else if (key == 'w') {
    bob.accelerate(.7);
  } else if(key == 's') {
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new Star();
    }
    bob.hyperspace();
  }
}

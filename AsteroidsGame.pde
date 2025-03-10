Spaceship bob = new Spaceship();
Star[] stars = new Star[40];
int numAsteroids = 10;
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < numAsteroids; i++) {
    asteroids.add(new Asteroid());
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
  for (int i = 0; i < numAsteroids; i++) {
    if (asteroids.get(i).tooClose(bob.getMyCenterX(), bob.getMyCenterY())) asteroids.set(i, new Asteroid());
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  for (int i = 0; i < bullets.size(); i++) {
    boolean itHappened = false;
    for (int seci = 0; seci < asteroids.size(); seci++) {
       if (bullets.get(i).tooClose(asteroids.get(seci).getMyCenterX(), asteroids.get(seci).getMyCenterY())) {
         asteroids.set(seci, new Asteroid());
         bullets.remove(i);
         itHappened = true;
         break;
       }
    }
    if (itHappened) break;
    bullets.get(i).move();
    bullets.get(i).show();
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
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.set(i, new Asteroid());
  }
    bob.hyperspace();
  } else if(key == ' ') {
    bullets.add(new Bullet(bob));
  }
}

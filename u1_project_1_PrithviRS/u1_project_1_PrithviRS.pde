
Projectile[] p = new Projectile[7500];
float randomY = 0;
void setup() {
  fullScreen(P2D);
  background(0);
  for (int i = 0; i < p.length; i++) {

    p[i] = new Projectile();
  }
}

void draw() {
background(0);
  randomY *= 0;
  randomY += random(height);

  for (int i = 0; i < p.length; i++) {
 
      p[i].update();
      p[i].checkEdges();
      p[i].display();
      p[i].resetSpeed();
      
    if (keyPressed)
    {
     p[i].setSpeed();
    }
  }
} 
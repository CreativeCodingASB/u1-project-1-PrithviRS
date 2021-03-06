class Projectile 
{

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float count;
  Projectile() 
  {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    topspeed = 2000;
  }

  void update() 
  {



    PVector loc = new PVector(width/2, randomY);
    PVector dir = PVector.sub(loc, location);

    dir.normalize();

    dir.mult(0.5);

    acceleration = dir;





    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }



  void display() 
  {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(location.x, location.y, 1.5, 1.5);
  }


  void checkEdges() 
  {

    if (location.x > width) 
    {
      location.x = 0;
    } else if (location.x < 0) 
    {
      location.x = width;
    }

    if (location.y > height) 
    {
      location.y = 0;
    } else if (location.y < 0) 
    {
      location.y = height;
    }
  }
    void setSpeed()
    {
      topspeed = 0;
      topspeed ++;
    }
    void resetSpeed()
    {
     topspeed = 2000; 
    }
  }
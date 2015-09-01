
int x, y;
int time;
int xspeed = 5;
int yspeed = 0;

void setup() {
  size(400, 400);
  x = 200;
  y = 200;
  time = millis();
  frameRate(30);
}

void draw() {
  background(150);

  if (millis()>time+10) {
    yspeed += 1;
    if (y+25>=400) {
      yspeed -= 2*yspeed-1;
    }

    if (x+25>=400 || x-25<=0) {
      xspeed -= 2*xspeed;
    }
    x = x + xspeed;
    y = y + yspeed;
    time = millis();
  }

  fill(255, 255, 0);
  ellipse(x, y, 50, 50);
}


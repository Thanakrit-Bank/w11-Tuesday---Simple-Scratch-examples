int Health;
float x, y, z;

void setup() {
  size(640,640);
  Health = 5;
}

void draw() {
  background(255);
  Bear(150,0,50,630);
  Cat(450+x,360+y,80+z);
}

void Bear(float posX, float posY, int widthSize, int heightSize) {
  rect(posX,posY,widthSize,heightSize);
}

void Cat(float posX, float posY, float size) {
  ellipse(posX, posY ,size, size);
  
  // when Cat hit the Bear will return to start point
  if (posX-80 <= 150) {
    Health -= 1;
    x = posX/4;
  }
  
  // set Cat size to 0 or disapear = dead
  if (Health < 1) {
    z = -80;
  }
  
  // d = right, a = left, w = up, s = down
  if (key == 'd' || key == 'D') {
    x += 4;
  } else {
    if (key == 'a' || key == 'A') {
      x -= 4;
    } else {
      if (key == 'w' || key == 'W') {
        y -= 4;
      }
    }
  }
  if (key == 's' || key == 'S') {
    y += 4;
  }
}

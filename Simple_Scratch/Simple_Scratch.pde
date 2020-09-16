int Health = 5;
float posX, posY;
float x, y;

void setup() {
  size(640,640);
  //background(255);
}

void draw() {
  background(255);
  Bear(150,240,50,180);
  Cat(450+x,360+y,80);
}

void Bear(float posX, float posY, int widthSize, int heightSize) {
  rect(posX,posY,widthSize,heightSize);
}

void Cat(float posX, float posY, int size) {
  ellipse(posX, posY ,size, size);
  
  Health = 5;
  
  if (posX+80 <= 150) {
    Health -= 1;
    delay(10);
  }
  
  if (Health < 1) {
    // pass
  }
  
  //posX = posX + x;
  //posY = posY + y;
  
  if (key == 'd' || key == 'D') {
    x += 10;
  } else {
    if (key == 'a' || key == 'A') {
      x -= 10;
    } else {
      if (key == 'w' || key == 'W') {
        y -= 10;
      }
    }
  }
  if (key == 's' || key == 'S') {
    y += 10;
  }
}

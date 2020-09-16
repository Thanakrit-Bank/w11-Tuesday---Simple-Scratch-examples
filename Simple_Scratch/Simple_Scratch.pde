int Health = 5;

void setup() {
  size(640,640);
  background(255);
}

void draw() {
  Bear();
  Cat();
}

void Bear() {
  rect(150,240,50,180);
}

void Cat() {
  ellipse(450,360,80,80);
}

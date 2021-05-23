boolean play= true;
boolean type=false;
boolean again=false;

void setup() {
  size(400, 400);
  background(255);
}
void draw() {

  if (play) {
    background(255);
    fill(255);
    text("CHO HAN", 200, 250);
    fill(255, 0, 0);
    ellipse(200, 300, 75, 75);
    fill(255);
    text("PLAY", 185, 305);
    
  } else if (type) {
    background(255);
    fill(255, 0, 0);
    rectMode(CENTER);
    ellipse(150, 200, 75, 75);
    ellipse(250, 200, 75, 75);
    fill(255);
    text("ODD", 235, 200);
    text("EVEN", 135, 200);
  } else if (again) {
    background(255);
    fill(255, 0, 0);
    ellipse(200, 300, 75, 75);
    fill(255);
    text("AGAIN", 180, 300);
  }
}
void mousePressed() {
  if (play && dist(mouseX, mouseY, 185, 305)<25) {
    play=!play;
    type=!type;
  } else {
    if (type && dist(mouseX, mouseY, 235, 200)<25 || dist(mouseX, mouseY, 135, 200)<25 ) {
      type =!type;
      again=!again;
    } else {
      if (again && dist(mouseX, mouseY, 185, 305)<25) {
        again=!again;
        play=!play;
      }
    }
  }
}

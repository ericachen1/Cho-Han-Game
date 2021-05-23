float left=random(1, 7);
int i=floor(left);
float right=random(1, 7);
int k=floor(right);

void setup() {
  size(400, 400);
  background(120);
}
void draw() {
  rectMode(CENTER);
  fill(255);
  rect(120, 200, 100, 100); //left die
  rect(275, 200, 100, 100); //right die

  if (i==6) {
    for (int x=92; x<175; x=x+30) { //six left dice
      for (int y=180; y<250; y=y+40) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (i==5) { 
    for (int x=90; x<200; x=x+60) { //five left dice
      for (int y=170; y<250; y=y+60) {
        fill(0);
        ellipse(120, 200, 20, 20);

        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (i==4) {
    for (int x=90; x<200; x=x+60) { //four left dice
      for (int y=170; y<250; y=y+60) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (i==3) {
    for (int x=100; x<160; x=x+45) { //three left dice 
      for (int y=180; y<220; y=y+60) {
        fill(0);
        ellipse(120, 220, 20, 20);
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (i==2) {
    for (int x=100; x<160; x=x+45) { //two left dice 
      for (int y=200; y<220; y=y+60) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (i==1) {
    fill(0);
    ellipse(120, 200, 20, 20);
  }

  if (k==6) {
    for (int x=245; x<315; x=x+30) { //six right dice
      for (int y=180; y<250; y=y+40) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (k==5) { 
    for (int x=245; x<350; x=x+60) { //five right dice
      for (int y=170; y<250; y=y+60) {
        fill(0);
        ellipse(275, 200, 20, 20);

        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (k==4) {
    for (int x=250; x<330; x=x+50) { //four right dice
      for (int y=170; y<250; y=y+60) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (k==3) {
    for (int x=250; x<320; x=x+45) { //three right dice 
      for (int y=180; y<220; y=y+60) {
        fill(0);
        ellipse(275, 220, 20, 20);
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (k==2) {
    for (int x=250; x<320; x=x+45) { //two right dice 
      for (int y=200; y<220; y=y+60) {
        fill(0);
        ellipse(x, y, 20, 20);
      }
    }
  } else if (k==1) { //one right dice
    fill(0);
    ellipse(275, 200, 20, 20);
  }
}
void mousePressed () {
  left= random(1, 7);
  right= random(1, 7);
}

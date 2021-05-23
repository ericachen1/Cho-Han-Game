boolean play= true;
boolean type=false;
boolean again=false;

boolean even=false;
boolean odd=false;

void setup() {
  size(400, 400);
  background(255);
}
void draw() {
  float left=random(1, 7);
  int i=floor(left);

  float right=random(1, 7);
  int k=floor(right);

  int s=i+k;

  if (play) {
    background(255);
    fill(255, 0, 0);
    text("INSTRUCTIONS:", 150, 30);
    fill(0);
    text("Welcome to the game of Chō-Han!", 105, 60);   
    text("The game of Chō-Han tests probability and luck.", 50, 90);
    text("1. Select whether the sum of a six-sided die will be even or odd.", 20, 120);   
    text("2. The two numbers that appear on the die....", 70, 150);
    text("will be the two number that were randomly selected for.", 50, 180);
    text("3. If you guessed the sum correctly, you win.", 80, 210);
    text("If you guessed wrong, you lose.", 110, 240);
    text("May the odds be in your favor.", 110, 370);
      fill(255, 100, 255);
    ellipse(200, 300, 65, 65);
    fill(255);
    text("PLAY", 185, 305);
  }  
  if (type) {
    background(255);
    fill(0);
    text("Tap on the icon you think", 90, 155);
    text("the sum of the die will be...", 160,180);
    fill(255, 0, 0);
    rectMode(CENTER);
    ellipse(140, 250, 60, 60);
    ellipse(250, 250, 60, 60);
    fill(255);
    text("ODD", 237, 252);
    text("EVEN", 125, 252);
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  } else if (mousePressed) {
    background(255);
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(120, 200, 100, 100); //left die
    rect(275, 200, 100, 100); //right die
    if (i==6) {
      for (int x=92; x<175; x=x+30) { //six left dice
        for (int y=180; y<250; y=y+40) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    } 
    if (i==5) { 
      for (int x=90; x<200; x=x+60) { //five left dice
        for (int y=170; y<250; y=y+60) {
          fill(0);
          ellipse(120, 200, 20, 20);

          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    } 
    if (i==4) {
      for (int x=90; x<200; x=x+60) { //four left dice
        for (int y=170; y<250; y=y+60) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (i==3) {
      for (int x=100; x<160; x=x+45) { //three left dice 
        for (int y=180; y<220; y=y+60) {
          fill(0);
          ellipse(120, 220, 20, 20);
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (i==2) {
      for (int x=100; x<160; x=x+45) { //two left dice 
        for (int y=200; y<220; y=y+60) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (i==1) {
      fill(0);
      ellipse(120, 200, 20, 20);
    } 
    if (k==6) {
      text(k, 270, 270);
      text(i, 120, 270);
      for (int x=245; x<315; x=x+30) { //six right dice
        for (int y=180; y<250; y=y+40) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (k==5) { 
      text(k, 270, 270);
      text(i, 120, 270);
      for (int x=245; x<350; x=x+60) { //five right dice
        for (int y=170; y<250; y=y+60) {
          fill(0);
          ellipse(275, 200, 20, 20);
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (k==4) {
      text(k, 270, 270);
      text(i, 120, 270);
      for (int x=250; x<330; x=x+50) { //four right dice
        for (int y=170; y<250; y=y+60) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (k==3) {
      text(k, 270, 270);
      text(i, 120, 270);
      for (int x=250; x<320; x=x+45) { //three right dice 
        for (int y=180; y<220; y=y+60) {
          fill(0);
          ellipse(275, 220, 20, 20);
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (k==2) {
      text(k, 270, 270);
      text(i, 120, 270);
      for (int x=250; x<320; x=x+45) { //two right dice 
        for (int y=200; y<220; y=y+60) {
          fill(0);
          ellipse(x, y, 20, 20);
        }
      }
    }  
    if (k==1) { //one right dice
      text(k, 270, 270);
      text(i, 120, 270);
      fill(0);
      ellipse(275, 200, 20, 20);
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (even && s%2==0) {
      fill(0);
      text("You guessed EVEN and that is correct.", 90, 90);
    } else if (even && s%2==1) {
      fill(0);
      text("You guessed EVEN but that is NOT correct.", 90, 90);
    } else if  (odd && s%2==1) {
      text("You guessed ODD and that is correct.", 90, 90);
    } else if (odd && s%2==0) {
      text("You guessed ODD and that is NOT correct.", 90, 90);
    }
    if (again) {
      fill(255, 100, 255);
      rect(200, 350, 50, 25);
      fill(0);
      text("Want to try again?",150,320);
      fill(255);
      text("PRESS", 185, 352);
      
      fill(0);
      text("Sum: " + s, 180, 120);
    }
  }
}
void mousePressed () {
  if (play && dist(mouseX, mouseY, 185, 305)<50) {
    play=!play;
    type=!type;
  } else {
    if (type && dist(mouseX, mouseY, 237, 252)<70 || dist(mouseX, mouseY, 125, 252)<50 ) {
      type =!type;
      again=!again;
    }
    if (dist(mouseX, mouseY, 125, 252)<70) {
      even=true;
      odd=false;
    } else {
      if (dist(mouseX, mouseY, 237, 252)<70) {
        odd=true;
        even=false;
      } else {
        if (again && mouseX>175 && mouseX<225 && mouseY>340 && mouseY<370){
          again=!again;
          play=!play;
        }
      }
    }
  }
}

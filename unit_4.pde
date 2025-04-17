color white = #FFFFFF;
color black = #000000;
color blue = #1B93D3;
color red = #B90504;
color green = #7AB317;
color yellow = #F8CA00;
color orange = #E97F02;
color brown = #774F38;

color selectedColor;
PImage icecream;
boolean icecreamQVQ;
PImage minions;
boolean minionsQVQ;
float slidery;
float thickness;
String selectedWord = "Hello";
int haha;
void setup () {
  size(1000, 800);
  background(white);
  strokeWeight(3);
  textSize(10);
  stroke(blue);
  fill(blue);
  slidery = 85;
  thickness = 0;
  icecream = loadImage("icecream.jpg");
  icecreamQVQ = false;
  minions = loadImage("OGC.gif");
  minionsQVQ = false;
  haha=1;
}
void draw() {
  fill(white);
  stroke(black);
  strokeWeight(3);
  fill(100);
  rect(0, 0, 1000, 170);
  strokeWeight(3);

  // slider
  thickness = max(0, map(slidery, 0, 170, 0, 15));
  strokeWeight(thickness);
  line(200, 30, 200, 140);
  if (mousePressed) {

    if (mouseX > 180 && mouseX < 220) {
      if (mouseY > 30&& mouseY < 140) {
        slidery = mouseY;
        slidery = constrain(slidery, 30, 140);
      }
      slidery = constrain(slidery, 30, 140);
      circle(200, slidery, 20);
    }
  }
  circle(200, slidery, 20);



  if (haha>0);
  strokeWeight(3);

  if (dist(40, 30, mouseX, mouseY) < 15) {
    stroke(black);
  } else {
    stroke(blue);
  }
  fill(blue);
  circle(40, 30, 30);
  if (dist(40, 80, mouseX, mouseY) < 15) {
    stroke(black);
  } else {
    stroke(red);
  }
  fill(red);
  circle(40, 80, 30);
  if (dist(40, 130, mouseX, mouseY) < 15) {
    stroke(black);
  } else {
    stroke(green);
  }
  fill(green);
  circle(40, 130, 30);
  if (dist(90, 30, mouseX, mouseY) < 15) {
    stroke(black);
  } else {
    stroke(yellow);
  }
  fill(yellow);
  circle(90, 30, 30);
  if (dist(90, 80, mouseX, mouseY) <15) {
    stroke(black);
  } else {
    stroke(orange);
  }
  fill(orange);
  circle(90, 80, 30);
  if (dist(90, 130, mouseX, mouseY) < 15) {
    stroke(brown);
  } else {
    stroke(black);
  }
  fill(black);
  circle(90, 130, 30);

  fill(selectedColor);
  stroke(black);
  fill(white);
  rect(130, 20, 39, 20);
  fill(black);
  textSize(10);
  text(selectedWord, 135, 34);



  //icecream

  {
    fill(white);
    tactile(250, 10, 100, 150);
    strokeWeight(15);
    if (mouseX > 250 && mouseX < 350 && mouseY > 10 && mouseY < 160) {
      stroke(0);
    } else {
      noStroke();
    }
    fill(100);
    rect(250, 10, 100, 150);
    image(icecream, 250, 10, 100, 150);
  }
  //minions
  {
    fill(white);
    tactile(360, 10, 170, 150);
    strokeWeight(15);
    if (mouseX > 360 && mouseX < 530 &&  mouseY>10 && mouseY <160) {
      stroke(0);
    } else {
      noStroke();
    }
    fill(100);
    rect(360, 10, 170, 150);
    image(minions, 360, 10, 170, 150);
  }
  //new save load
  tactile(715, 5, 55, 30);
  strokeWeight(5);
  if (mouseX >715 && mouseX < 770 &&  mouseY>5 && mouseY <35) {
    stroke(0);
  } else {
    noStroke();
  }

  fill(100);
  rect(715, 5, 55, 30);
  textSize(25);
  fill(black);
  text("New", 720, 30);
  strokeWeight(0);


  stroke(0);
  tactile(715, 35, 65, 30);
  strokeWeight(5);
  if (mouseX >715 && mouseX < 770 &&  mouseY>35 && mouseY <65) {
    stroke(0);
  } else {
    noStroke();
  }

  fill(100);

  rect(715, 35, 65, 30);
  fill(0);
  textSize(25);
  text("save", 720, 60);
  strokeWeight(0);

  stroke(0);
  tactile(715, 65, 65, 30);
  strokeWeight(5);
  if (mouseX >715 && mouseX < 770 &&  mouseY>65 && mouseY <95) {
    stroke(0);
  } else {
    noStroke();
  }

  fill(100);
  rect(715, 65, 65, 30);
  fill(0);
  textSize(25);
  text("Load", 720, 90);
  strokeWeight(0);
}

void mouseReleased() {
  textSize(10);
  if (dist(40, 30, mouseX, mouseY) <20) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = blue;
    selectedWord = "Blue";
  }

  if (dist(40, 80, mouseX, mouseY) <20) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = red;
    selectedWord = "Red";
  }
  if (dist(40, 130, mouseX, mouseY) < 20) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = green;
    selectedWord = "Green";
  }
  if (dist(90, 30, mouseX, mouseY) < 30) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = yellow;
    selectedWord = "Yellow";
  }
  if (dist(90, 80, mouseX, mouseY) < 30) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = orange;
    selectedWord = "Orange";
  }
  if (dist(90, 130, mouseX, mouseY) < 30) {
    textSize(10);
        icecreamQVQ = false;
    minionsQVQ = false;
    selectedColor = black;
    selectedWord = "Black";
  }
  if (mouseX > 130 && mouseX < 230 && mouseY > 20 && mouseY < 70) {
    textSize(10);
    selectedWord = "Bye";
  }
  if (mouseX > 250 && mouseX < 350 && mouseY > 10 && mouseY < 160) {
    haha=haha*-1;
    selectedColor = black;
    icecreamQVQ = !icecreamQVQ;
    minionsQVQ = false;
  }
  if (mouseX > 360 && mouseX < 530 &&  mouseY>10 && mouseY <160) {
    minionsQVQ = !minionsQVQ;
    icecreamQVQ = false;
  }
  savebutton(715, 35, 65, 25);
  loadbutton(715, 65, 65, 25);
  newbutton(715, 5, 55, 30);
  
}
void tactile(int x, int y, int w, int h) {
  if (mouseX > x  && mouseX < x+w && mouseY > y && mouseY < y+w) {
    fill(255, 255, 0);
  } else {
    fill(white);
  }


  //  if (mouseX>715 && mouseX<780 && mouseY>35 && mouseY <65) {
  //    selectOutput("Please choose a name for your new proflie", "saveImage");
  //  }
  //  if (mouseX>715 && mouseX<780 && mouseY>35 && mouseY <65) {
  //    selectOutput("Please choose a name for your new proflie", "openImage");
  //  }
}

void mouseDragged() {

  //line(pmouseX, pmouseY, mouseX, mouseY);


  if (mouseX > 10 && mouseX < 60 && mouseY > 520 && mouseY < 545) {
    selectInput("Pick an image to load", "openImage");
  }

  if (mouseX > 10 && mouseX < 60 && mouseY > 550 && mouseY < 575) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }
  if (mouseY > 170) {
    if (icecreamQVQ == true) {

      image(icecream, mouseX, mouseY, thickness*20, thickness*20);
    } else if (minionsQVQ == true) {

      image(minions, mouseX, mouseY, thickness*20, thickness*20);
    } else {
      strokeWeight(thickness);
      stroke(selectedColor);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
}
void icecreamOnOff() {
  if (icecreamQVQ == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }

if(icecreamQVQ == true){
  if (mouseX > 250 && mouseX < 350 && mouseY > 10 && mouseY < 160) {
  }else{
      if (dist(40, 30, mouseX, mouseY) < 15) {
    stroke(black);
  } else {
    stroke(blue);
  }
  fill(blue);
  circle(40, 30, 30);
  }
  }
}
void minionsOnOff() {
  if (minionsQVQ == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
void newbutton(float x, float y, float w, float h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {

    fill(255);
    rect(0, 170, 1000, 1000);
  }
}




void savebutton(float x, float y, float w, float h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {

    selectOutput("Please choose a name for your new profile", "saveImage");
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get();
    canvas.save(f.getAbsolutePath());
  }
}



void loadbutton(float x, float y, float w, float h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {

    selectInput("Please select a profile", "openImage");
  }
}

void openImage(File f) {
  if (f != null) {
    PImage pic =loadImage(f.getPath());
  }
}

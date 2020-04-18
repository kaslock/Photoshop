PImage img = null;
PImage imgTemp = null;

int imageSelect = 0;
int redTint = 1525;
int greenTint = 1525;
int blueTint = 1525;
int opacity = 1525;

boolean button1 = false;
boolean button2 = false;
boolean button3 = false;


void setup() {
 
  size(1600, 900);
  background(38, 38, 38);
  textSize(11);
  
  /* Top */
  fill(83, 83, 83);
  strokeWeight(1.6);
  stroke(40, 40, 40);
  rect(0, 0, 1600, 100);
  
  /* Side */
  fill(56, 56, 56);
  stroke(83, 83, 83);
  strokeWeight(1.5);
  rect(1, 78, 48.5, 20.5);
  fill(83, 83, 83);
  strokeWeight(0.7);
  stroke(40, 40, 40);
  rect(0, 80, 47.5, 798);
  stroke(56, 56, 56);
  strokeWeight(0.9);
  line(0, 99, 47.4, 99);
  fill(215);
  text("PHOTO", 5, 93);
  
  /* Image information */
  fill(83,83,83);
  stroke(56, 56, 56);
  strokeWeight(2);
  rect(50, 70, 170, 30);
 
  /* Image buttons */
  fill(69, 69, 69);
  noStroke();
  strokeWeight(1.5);
  for(int i = 0; i < 5; i++) {
    rect(180 + i*160, 20, 100, 30);
    ellipse(180+i*160, 35, 30, 30);
    ellipse(280+i*160, 35, 30, 30);
  }
  
  stroke(220);
  for(int i = 0; i < 5; i++) {
    line(181 + i*160, 20, 279 + i*160, 20);
    arc(180 + i*160, 35, 30, 30, PI/2, 3*PI/2);
    line(181 + i*160, 50, 279 + i*160, 50);
    arc(280 + i*160, 35, 30, 30, 3*PI/2, 5*PI/2);
  }
  
  /* Image Text */
  fill(255);
  textSize(20);
  text("Image1", 195, 42);
  text("Image2", 355, 42);
  text("Image3", 515, 42);
  text("Image4", 675, 42);
  text(" NONE ", 835, 42);
  
  /* save button */
  fill(50);
  stroke(40,40);
  strokeWeight(1.5);
  rect(13,13,54,49);
    
  /* functions button */
  fill(175);
  strokeWeight(0);
  for(int i = 0; i < 2; i++)
    rect(1200 + 200*i, 74, 199, 25);
  
  fill(20);
  text("Color", 1278, 95);
  text("Filter", 1478, 95);

}

void draw() {
  
  imageSave();
  imageButton();
  
  if (imageSelect >= 0) {
    getImage();
    delay(60);
  }
  
  if(mousePressed && mouseX > 1200 && mouseY > 75 && mouseX < 1332 && mouseY < 100) {
    colorMode(RGB);
    button1 = true;
    button2 = false;
  }
  
  if(mousePressed && mouseX > 1400 && mouseY > 75 && mouseX < 1600 && mouseY < 100) {
    button1 = false;
    button2 = true;
  }
  
  if (button1) colorAdjustments();
  if (button2) imageFilter();
 
}

void imageButton() {

  if (mousePressed && mouseX > 180 && mouseY > 20 && mouseX < 280 && mouseY < 50) {
     imageSelect = 1;
  }
  
  if (mousePressed && mouseX > 340 && mouseY > 20 && mouseX < 440 && mouseY < 50) {
     imageSelect = 2;
  }
  
  if (mousePressed && mouseX > 500 && mouseY > 20 && mouseX < 600 && mouseY < 50) {
     imageSelect = 3;
  }
  
  if (mousePressed && mouseX > 660 && mouseY > 20 && mouseX < 760 && mouseY < 50) {
     imageSelect = 4;
  }
  
  if (mousePressed && mouseX > 820 && mouseY > 20 && mouseX < 920 && mouseY < 50) {
     imageSelect = 5;
  }
 
}

void getImage() {
    
  fill(83,83,83);
  stroke(56, 56, 56);
  strokeWeight(2);
  rect(50, 70, 170, 30);
    
  noFill();
  stroke(69,69,69);
  strokeWeight(2.5);
  
  for(int i = 0; i < 5; i++) {
    line(181 + i*160, 20, 279 + i*160, 20);
    arc(180 + i*160, 35, 30, 30, PI/2, 3*PI/2);
    line(181 + i*160, 50, 279 + i*160, 50);
    arc(280 + i*160, 35, 30, 30, 3*PI/2, 5*PI/2);
  }
    
  stroke(220);
  strokeWeight(1.5);
  for(int i = 0; i < 5; i++) {
    line(181 + i*160, 20, 279 + i*160, 20);
    arc(180 + i*160, 35, 30, 30, PI/2, 3*PI/2);
    line(181 + i*160, 50, 279 + i*160, 50);
    arc(280 + i*160, 35, 30, 30, 3*PI/2, 5*PI/2);
  }
    
    
  fill(38, 38, 38);
  noStroke();
  rect(49.5, 102.5, 1140, 800);
    
  stroke(200, 30, 22);
  noFill();
  strokeWeight(2.5);
  switch(imageSelect) {
    case 1:
      line(181, 20, 279, 20);
      arc(180, 35, 30, 30, PI/2, 3*PI/2);
      line(181, 50, 279, 50);
      arc(280, 35, 30, 30, 3*PI/2, 5*PI/2);
      fill(255);
      textSize(15);
      text("image1.jpg", 97, 91);
      img = loadImage("image1.jpg");
      imgTemp = img;
      image(img, 50, 103);
      break;
        
    case 2:
        line(181 + 160, 20, 279 + 160, 20);
        arc(180 + 160, 35, 30, 30, PI/2, 3*PI/2);
        line(181 + 160, 50, 279 + 160, 50);
        arc(280 + 160, 35, 30, 30, 3*PI/2, 5*PI/2);
        fill(255);
        textSize(15);
        text("image2.jpg", 97, 91);
        img = loadImage("image2.jpg");
        imgTemp = img;
        image(img, 50, 103);
        break;
        
    case 3:
      line(181 + 2*160, 20, 279 + 2*160, 20);
      arc(180 + 2*160, 35, 30, 30, PI/2, 3*PI/2);
      line(181 + 2*160, 50, 279 + 2*160, 50);
      arc(280 + 2*160, 35, 30, 30, 3*PI/2, 5*PI/2);
      fill(255);
      textSize(15);
      text("image3.jpg", 97, 91);
      img = loadImage("image3.jpg");
      imgTemp = img;
      image(img, 50, 103);
      break;
        
    case 4:
      line(181 + 3*160, 20, 279 + 3*160, 20);
      arc(180 + 3*160, 35, 30, 30, PI/2, 3*PI/2);
      line(181 + 3*160, 50, 279 + 3*160, 50);
      arc(280 + 3*160, 35, 30, 30, 3*PI/2, 5*PI/2);
      fill(255);
      textSize(15);
      text("image4.jpg", 97, 91);
      img = loadImage("image4.jpg");
      imgTemp = img;
      image(img, 50, 103);
      break;
      
    case 5:
      line(181 + 4*160, 20, 279 + 4*160, 20);
      arc(180 + 4*160, 35, 30, 30, PI/2, 3*PI/2);
      line(181 + 4*160, 50, 279 + 4*160, 50);
      arc(280 + 4*160, 35, 30, 30, 3*PI/2, 5*PI/2);
      noStroke();
      rect(49.5, 102.5, 1200, 800);
      img = null;
  }
    
  imageSelect = -1;
}

void imageSave() {
  colorMode(RGB);
  stroke(125);
  strokeWeight(2);
  fill(0,0,128);
  rect(15,15,50,45);
  
  noStroke();
  fill(125);
  triangle(57,15,65,15,65,23);
  stroke(255);
  fill(230);
  rect(26,15,26,13);
  rect(25,37,28,17);
  stroke(0);
  line(28,42,50,42);
  line(28,46,50,46);
  line(28,50,50,50);
  
  if(mousePressed && mouseX > 15 && mouseY > 15 && mouseX < 65 && mouseY < 60) {
    save("drawing.jpg");
  }
}

void colorAdjustments() {
  
  textSize(20);
  stroke(60, 20);
  fill(175);
  rect(1190, 98, 510, 802);
  
  /* Red */
  strokeWeight(1.5);
  stroke(60);
  noFill();
  rect(1269, 218, 257, 26);
  noStroke();
  
  for(int i = 0; i < 256; i++) {
    fill(i, 0, 0);
    rect(1270+i, 219, 1, 25);
  }
  stroke(0);
  if(mousePressed && mouseX > 1269 && mouseY > 219 && mouseX < 1526 && mouseY < 252) {
    redTint = mouseX;
  }
  fill(120 + (redTint - 1270)/2, 0, 0, 235);
  ellipse(redTint, 232, 30, 30);
  
  /* Green */
  strokeWeight(1.5);
  stroke(60);
  noFill();
  rect(1269, 218 + 50, 257, 26);
  noStroke();
  
  for(int i = 0; i < 256; i++) {
    fill(0, i, 0);
    rect(1270+i, 219 + 50, 1, 25);
  }
  stroke(0);
  if(mousePressed && mouseX > 1269 && mouseY > 269 && mouseX < 1526 && mouseY < 302) {
    greenTint = mouseX;
  }
  fill(0, 120 + (greenTint-1270)/2, 0, 235);
  ellipse(greenTint, 232 + 50, 30, 30);
  
  /* Blue */
  strokeWeight(1.5);
  stroke(60);
  noFill();
  rect(1269, 218 + 100, 257, 26);
  noStroke();
  
  for(int i = 0; i < 256; i++) {
    fill(0, 0, i);
    rect(1270+i, 219 + 100, 1, 25);
  }
  stroke(0);
  if(mousePressed && mouseX > 1269 && mouseY > 319 && mouseX < 1526 && mouseY < 352) {
    blueTint = mouseX;
  }
  fill(0, 0, 120 + (blueTint-1270)/2, 235);
  ellipse(blueTint, 232 + 100, 30, 30);
  
  /* Opacity */
  strokeWeight(1.5);
  stroke(60);
  noFill();
  rect(1269, 218 + 150, 257, 26);
  noStroke();
  
  for(int i = 0; i < 256; i++) {
    fill(255-i, 255-i, 255-i);
    rect(1270+i, 219 + 150, 1, 25);
  }
  stroke(0);
  if(mousePressed && mouseX > 1269 && mouseY > 369 && mouseX < 1526 && mouseY < 402) {
    opacity = mouseX;
  }
  fill(1525-opacity, 1525-opacity, 1525-opacity, 215);
  ellipse(opacity, 232 + 150, 30, 30);
    
  if (int(opacity) < 1525) {
    fill(38, 38, 38);
    noStroke();
    rect(49.5, 102.5, 1140, 800);
  }
  
  /* Tint */
  tint(redTint-1270, greenTint-1270, blueTint-1270, opacity-1270);
  
  if (img != null)
    image(img, 50, 103);
  
  /* Tint Color */
  fill(redTint-1270,greenTint-1270,blueTint-1270);
  strokeWeight(2);
  stroke(40);
  rect(1360, 120, 80, 70);
  
  strokeWeight(3);
  stroke(20, 20);
  
  /* Only Red */
  fill(20, 20, 20, 240);
  rect(1240, 450, 140, 30);
  fill(255);
  text("Only Red", 1265, 472);
  if (mousePressed && mouseX > 1240 && mouseY > 450 && mouseX < 1380 && mouseY < 480) {
    redTint = 1525;
    greenTint = 1270;
    blueTint = 1270;
  }
  
  /* Non-Red */
  fill(20, 20, 20, 240);
  rect(1420, 450, 140, 30);
  fill(255);
  text("Non-Red", 1445, 472);
  if (mousePressed && mouseX > 1420 && mouseY > 450 && mouseX < 1560 && mouseY < 480) {
    redTint = 1270;
    greenTint = 1525;
    blueTint = 1525;
  }
  
  /* Only Green */
  fill(20, 20, 20, 240);
  rect(1240, 500, 140, 30);
  fill(255);
  text("Only Green", 1258, 472+50);
  if (mousePressed && mouseX > 1240 && mouseY > 500 && mouseX < 1380 && mouseY < 530) {
    redTint = 1270;
    greenTint = 1525;
    blueTint = 1270;
  }
  
  /* Non-Green */
  fill(20, 20, 20, 240);
  rect(1420, 500, 140, 30);
  fill(255);
  text("Non-Green", 1438, 472+50);
  if (mousePressed && mouseX > 1420 && mouseY > 500 && mouseX < 1560 && mouseY < 530) {
    redTint = 1525;
    greenTint = 1270;
    blueTint = 1525;
  }
  
  /* Only Blue */
  fill(20, 20, 20, 240);
  rect(1240, 550, 140, 30);
  fill(255);
  text("Only Blue", 1265, 472+100);
  if (mousePressed && mouseX > 1240 && mouseY > 550 && mouseX < 1380 && mouseY < 580) {
    redTint = 1270;
    greenTint = 1270;
    blueTint = 1525;
  }
  
  /* Non-Blue */
  fill(20, 20, 20, 240);
  rect(1420, 550, 140, 30);
  fill(255);
  text("Non-Blue", 1445, 472+100);
  if (mousePressed && mouseX > 1420 && mouseY > 550 && mouseX < 1560 && mouseY < 580) {
    redTint = 1525;
    greenTint = 1525;
    blueTint = 1270;
  }
  
  /* Maximum Red */
  fill(20, 20, 20, 240);
  rect(1240, 630, 140, 30);
  fill(255);
  text("Max Red", 1267, 652);
  if (mousePressed && mouseX > 1240 && mouseY > 630 && mouseX < 1380 && mouseY < 660) {
    redTint = 1525;
  }
  
  /* Minimum Red */
  fill(20, 20, 20, 240);
  rect(1420, 630, 140, 30);
  fill(255);
  text("Min Red", 1447, 652);
  if (mousePressed && mouseX > 1420 && mouseY > 630 && mouseX < 1560 && mouseY < 660) {
    redTint = 1270;
  }
  
  /* Maximum Green */
  fill(20, 20, 20, 240);
  rect(1240, 680, 140, 30);
  fill(255);
  text("Max Green", 1259, 702);
  if (mousePressed && mouseX > 1240 && mouseY > 680 && mouseX < 1380 && mouseY < 710) {
    greenTint = 1525;
  }
  
  /* Minimum Green */
  fill(20, 20, 20, 240);
  rect(1420, 680, 140, 30);
  fill(255);
  text("Min Green", 1439, 702);
  if (mousePressed && mouseX > 1420 && mouseY > 680 && mouseX < 1560 && mouseY < 710) {
    greenTint = 1270;
  }
  
  /* Maximum Blue */
  fill(20, 20, 20, 240);
  rect(1240, 730, 140, 30);
  fill(255);
  text("Max Blue", 1267, 752);
  if (mousePressed && mouseX > 1240 && mouseY > 730 && mouseX < 1380 && mouseY < 760) {
    blueTint = 1525;
  }
  
  /* Minimum Blue */
  fill(20, 20, 20, 240);
  rect(1420, 730, 140, 30);
  fill(255);
  text("Min Blue", 1447, 752);
  if (mousePressed && mouseX > 1420 && mouseY > 730 && mouseX < 1560 && mouseY < 760) {
    blueTint = 1270;
  }
  
  textSize(15);
  /* Opacity 0 % */
  fill(20, 20, 20, 240);
  rect(1240, 810, 140, 30);
  fill(255);
  text("Opacity 0%", 1272, 832);
  if (mousePressed && mouseX > 1240 && mouseY > 810 && mouseX < 1380 && mouseY < 840) {
    opacity = 1270;
  }
  
  /* Opacity 100 % */
  fill(20, 20, 20, 240);
  rect(1420, 810, 140, 30);
  fill(255);
  text("Opacity 100%", 1443, 832);
  if (mousePressed && mouseX > 1420 && mouseY > 810 && mouseX < 1560 && mouseY < 840) {
    opacity = 1525;
  }
  
  /* Reset */
  strokeWeight(2);
  stroke(15);
  fill(60, 60, 60, 240);
  rect(1210, 122, 60, 28);
  fill(255);
  text("Reset", 1220, 142);
  if (mousePressed && mouseX > 1210 && mouseY > 122 && mouseX < 1270 && mouseY < 150) {
    redTint = 1525;
    greenTint = 1525;
    blueTint = 1525;
    opacity = 1525;
  }
  
}

void imageFilter() {
  textSize(20);
  stroke(60, 20);
  fill(175);
  rect(1190, 98, 510, 802);
  
  boolean gray = false;
  boolean hue180 = false;
  boolean hueInteractive = false;
  boolean inverse = false;
  boolean desaturation = false;
  boolean reset = false;
  
  stroke(20);
  fill(80,80,80);
  
  if (img == null) {
    img = loadImage("image1.jpg");
  }
  
  /* Gray Image*/
  fill(80,80,80);
  rect(1250, 160, 100, 100);
  fill(250);
  textSize(20);
  text("Gray", 1277, 220);
  if (mousePressed && mouseX > 1250 && mouseY > 160 && mouseX < 1350 && mouseY < 260) {
    colorMode(RGB);
    gray = true;
    delay(50);
  }
  
  float r,g,b, ave;
  
  if(gray) {
    for(int x=0; x<img.width; x++)
      for(int y=0; y<img.height; y++) {
        color c = img.get(x,y);
        r = red(c);
        g = green(c);
        b = blue(c);
        ave = (r+g+b)/3;
        c = color(ave,ave,ave);
        set(x+50,y+103,c);
      }
    gray = false;
    delay(200);
  }
  
  /* Hue 180 degree */
  fill(80,80,80);
  rect(1450, 160, 100, 100);
  fill(250);
  textSize(16);
  text(" Hue-180", 1460, 202);
  text("   Degree ", 1457, 222);
  if (mousePressed && mouseX > 1450 && mouseY > 160 && mouseX < 1550 && mouseY < 260) {  
    hue180 = true;
    colorMode(HSB);
    delay(50);
  }
 
  if (hue180) {
    for(int x=0; x<int(img.width); x++)
      for(int y=0; y<int(img.height); y++) {
        color c = img.get(x,y);
        c = color((hue(c)+128)%256,saturation(c),brightness(c));
        set(50+x,103+y,c);
      }
     hue180 = false;
     delay(200);
  }
 
  
  /* Hue Interactive degree */
  fill(80,80,80);
  rect(1250, 360, 100, 100);
  fill(250);
  textSize(16);
  text("      Hue  ", 1255, 397);
  text(" Interactive", 1255, 415);
  text("   Degree  ", 1255, 432);
  if (mousePressed && mouseX > 1250 && mouseY > 360 && mouseX < 1350 && mouseY < 460) {
    hueInteractive = true;
    colorMode(HSB);
    delay(50);
  }
 
  if (hueInteractive) {
    for(int x=0; x<img.width; x++)
      for(int y=0; y<img.height; y++) {
        color c = get(x+50,y+103);
        c = color(((hue(c)+(mouseX*255)/width))%256,saturation(c),brightness(c));
        set(x+50,y+103,c);
      }
    hueInteractive = false;
    delay(200);
  }
 
  
  /* Inverse */
  fill(80,80,80);
  rect(1450, 360, 100, 100);
  fill(250);
  textSize(20);
  text("Inverse", 1465, 417);
  if (mousePressed && mouseX > 1450 && mouseY > 360 && mouseX < 1550 && mouseY < 460) {
    inverse = true;
    colorMode(RGB);
    delay(50);
  }
  
  if(inverse) {
    for(int x=0; x<img.width; x++)
      for(int y=0; y<img.height; y++) {
        color c = img.get(x,y);
        c = color(255-red(c),255-green(c),255-blue(c));
        set(x+50,y+103,c);
      }
    inverse = false;
    delay(200);
  }
  
  /* Desturation */
  fill(80,80,80);
  rect(1250, 560, 100, 100);
  fill(250);
  textSize(16);
  text("Desturation", 1255, 615);
  if (mousePressed && mouseX > 1250 && mouseY > 560 && mouseX < 1350 && mouseY < 660) {
    colorMode(HSB);
    desaturation = true;
    delay(50);
  }
  
  if(desaturation) {
    for(int x=0; x<img.width; x++)
      for(int y=0; y<img.height; y++) {
        color c = img.get(x,y);
        c = color(hue(c),0,brightness(c));
        set(x+50,y+103,c);
      }
    desaturation = false;
    delay(200);
  }
  
  /* Reset */
  fill(80,80,80);
  rect(1450, 560, 100, 100);
  textSize(20);
  fill(250);
  text("Reset", 1475, 615);
  if (mousePressed && mouseX > 1450 && mouseY > 560 && mouseX < 1550 && mouseY < 660) {
    reset = true;
    delay(50);
  }
  if(reset) {
    img = imgTemp;
    image(img, 50, 103);
    reset = false;
    delay(200);
  }
  
  /* Save Filter */
  fill(40,80,185);
  rect(1340, 750, 120, 80);
  textSize(16);
  fill(250);
  text("Save Filter", 1363, 800);
  if (mousePressed && mouseX > 1340 && mouseY > 750 && mouseX < 1460 && mouseY < 830) {
    colorMode(RGB);
    for(int x=0; x<img.width; x++)
      for(int y=0; y<img.height; y++) { 
        color c = get(x+50, y+103);
        img.set(x, y, c);
      }
    delay(50);
  }
}

Ribbon[] streamers;
color backColor = color(0);

void setup() {
  background(backColor, 10);
  size(900, 600);
  streamers = new Ribbon[30];
  for (int i=0; i<streamers.length; i++) {
    streamers[i] = new Ribbon();
    noStroke();
  }
}   
void draw()   
{
  fill(backColor, 40);
  rect(0, 0, 900, 600);
  for (int i=0; i<streamers.length; i++) {
    streamers[i].show();
    streamers[i].move();
  }
  for (int j=0; j<streamers.length; j++) {
    if (get(mouseX, mouseY) == streamers[j].ribbonColor) {
      background(streamers[j].ribbonColor+1);
      backColor = color(streamers[j].ribbonColor+1);
      streamers[j].Xpos = mouseX;
      streamers[j].Ypos = mouseY;
      j = streamers.length;
    }
  }
}  
class Ribbon {
  int Xpos, Ypos, ribbonR, ribbonG, ribbonB;
  color ribbonColor;
  Ribbon() {
    Xpos = 450;
    Ypos = 300;
    ribbonColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(ribbonColor);
    ellipse(Xpos, Ypos, 15, 15);
  }
  void move() {
    Xpos = Xpos < mouseX ? Xpos+(int)(Math.random()*19-8): Xpos-(int)(Math.random()*19-8);
    Ypos = Ypos < mouseY ? Ypos+(int)(Math.random()*19-8): Ypos-(int)(Math.random()*19-8);
  }
}

void mouseClicked() {
  background(0);
  backColor = 0;
  for (int i=0; i<streamers.length; i++) {
    streamers[i].Xpos = 450;
    streamers[i].Ypos = 300;
    streamers[i].ribbonColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
}
Ribbon[] streamers;
color backColor = color(0);

void setup() {
  background(backColor, 10);
  size(900, 600);
  streamers = new Ribbon[20];
  for (int i=0; i<20; i++) {
    streamers[i] = new Ribbon();
    noStroke();
  }
}   
void draw()   
{
  fill(backColor, 50);
  rect(0, 0, 900, 600);
  for (int i=0; i<20; i++) {
    streamers[i].show();
    streamers[i].move();
  }
  for (int j=0; j<20; j++) {
    if (get(mouseX, mouseY) == streamers[j].ribbonColor) {
      for (int i=0; i<20; i++) {
        streamers[i].Xpos = mouseX;
        streamers[i].Ypos = mouseY;
      }
      background(streamers[j].ribbonColor+1);
      backColor = (streamers[j].ribbonColor+1);
      delay(500);
      
  System.out.println(streamers[j].ribbonColor+1);
    }
  }
}  
class Ribbon {
  int Xpos, Ypos, ribbonR, ribbonG, ribbonB;
  color ribbonColor;
  Ribbon() {
    Xpos = 450;
    Ypos = 450;
    ribbonColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(ribbonColor);
    ellipse(Xpos, Ypos, 15, 15);
  }
  void move() {
    Xpos = Xpos < mouseX ? Xpos+(int)(Math.random()*19-8): Xpos-(int)(Math.random()*19-8);
    Ypos = Ypos < mouseY ? Ypos+(int)(Math.random()*19-8): Ypos-(int)(Math.random()*19-8);
    //System.out.println(Xpos + ", " + Ypos);
  }
}

void restart() {
  clear();
  for (int i=0; i<20; i++) {
    streamers[i].Xpos = mouseX;
    streamers[i].Ypos = mouseY;
  }
}
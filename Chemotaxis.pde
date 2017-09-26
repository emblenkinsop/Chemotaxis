Ribbon[] streamers;
color backColor = color(0);
int j = 361;

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
  if (j > 360) {
  if (get(mouseX, mouseY) != backColor) {
    backColor = get(mouseX, mouseY);
    for (int i=0; i<20; i++) {
      streamers[i].Xpos = mouseX;
      streamers[i].Ypos = mouseY;
    }
  }
  j++;
  }
  System.out.println(j);
}  
class Ribbon {
  int Xpos, Ypos, ribbonR, ribbonG, ribbonB;
  Ribbon() {
    Xpos = 450;
    Ypos = 450;
    ribbonR = (int)(Math.random()*256);
    ribbonG = (int)(Math.random()*256);
    ribbonB = (int)(Math.random()*256);
  }
  void show() {
    fill(ribbonR, ribbonG, ribbonB);
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
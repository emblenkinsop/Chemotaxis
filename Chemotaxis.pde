Ribbon[] streamers;

 void setup() {
   background(0);
   size(900,600);
   streamers = new Ribbon[20];
   for (int i=0; i<20; i++) {
     streamers[i] = new Ribbon();
     noStroke();
   }
 }   
 void draw()   
 {
  fill(0,0,0,10);
  rect(0,0,900,600);
 	for (int i=0; i<20; i++) {
     streamers[i].show();
     streamers[i].move();
   } 
 }  
 class Ribbon  {
  int Xpos, Ypos;
  Ribbon() {
    Xpos = 450;
    Ypos = 450;
  }
  void show() {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(Xpos, Ypos, 10, 10);
  }
  void move() {
    Xpos = Xpos < mouseX ? Xpos+(int)(Math.random()*7-3): Xpos-(int)(Math.random()*7-3);
    Ypos = Ypos < mouseY ? Ypos+(int)(Math.random()*7-3): Ypos-(int)(Math.random()*7-3);
    System.out.println(Xpos + ", " + Ypos);
  }
  
 }    
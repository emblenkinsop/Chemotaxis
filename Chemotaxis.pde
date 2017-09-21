Ribbon[] streamers;
 void setup() {
   size(900,600);
   streamers = new Ribbon[10];
   for (int i=0; i<10; i++) {
     streamers[i] = new Ribbon();
   }
 }   
 void draw()   
 {    
 	for (int i=0; i<10; i++) {
     streamers[i].show();
     streamers[i].move();
   } 
 }  
 class Ribbon  {
  int Xpos, Ypos, ribbonColor;
  Ribbon() {
    Xpos = 450;
    Ypos = 450;
    ribbonColor = (int)(Math.random()*256);
  }
  show() {
    
  }
  move() {
    Xpos < mouseX ? Xpos = Xpos+(int)(Math.random()*3): Xpos = Xpos-(int)(Math.random()*3);
  }
  
 }    
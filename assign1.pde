/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int bgx=0;
int rx1,ry1;
int rx2,ry2;
int hpx;
void setup () {
  size(640,480) ;  // must use this size.
  bg1=loadImage("bg1.png");
  bg2=loadImage("bg2.png");
  enemy=loadImage("enemy.png");
  fighter=loadImage("fighter.png");
  hp=loadImage("hp.png");
  treasure=loadImage("treasure.png");
  rx1=floor(random(0,600));
  ry1=floor(random(0,440));
  rx2=floor(random(0,600));
  ry2=floor(random(0,430));
  hpx=floor(random(0,200));
}

void draw() {
  background(0);
  image(bg1,bgx%1280-640,0);
  image(bg2,(bgx+640)%1280-640,0); 
  image(fighter,520,280);
  image(treasure,rx1,ry1);
  image(enemy,rx2,ry2);
  fill(#ff0000);
  stroke(#ff0000);
  rect(20,18,hpx,20);
  image(hp,15,15);
 bgx++;rx2=(rx2+3)%640; 
  
  
  // your code
}

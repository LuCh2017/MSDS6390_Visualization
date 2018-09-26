float magn = 1;
float magnMax = 5;
float interval = 0.05;
float headR, faceR;
float mouthOpen = 1;
float mouthMax = 2;
int mouthFlag = 1;
float bodyWidth, bodyLength;
int feetIndicator = 1;
int blinkIndicator = 1;

PImage bg;

float armAngle = 0;
float waveAngle = -1.4;
float armSpeed = 0.1;
float waveSpeed = 0.03;

//int armAngle = 1;
//int waveAngle = -140;
//int armSpeed = 10;
//int waveSpeed = 3;

int stepSpeed = 8;
int blinkSpeed = 30; 
int stepCount = stepSpeed +1 ;
int blinkCount = 0;

float initPositionX = headR;
float initPositionY = headR;
int area = 3;

float mX = 0;
float mY = 0;

int mouseAction = 0;

float doraemonAngle = 0;

float freeSpinAngle = 0;
float freeSpinSpeed = 0.1;
float freeSpinSpeedX = 1;
float freeSpinSpeedY = 1;
float freeSpinFlagX = 2;
float freeSpinFlagY = 1;
float freeSpinMagn = 1;


color doraemonColor = color(0, 168, 213);

void setup(){
  size(1920,1200);
  bg = loadImage("background1.png");
}

void draw(){
  // double click , Doraemon freely spinning around mode.
   background(bg);
   fill(0,180,random(180,255));
   textSize(width/8);
   text("Doraemon",width/5,height/6);
   doraemonColor = color(0, 168, 213);
   // if right click clear screen(do nothing)
  if (mouseAction == 3){} 
   // if double click,bouncing
  else if (mouseAction == 2){
    translate(initPositionX,initPositionY);
    rotate(freeSpinAngle);
    pushMatrix();
      //doraemonColor = color(0, 168, 213,80);
      magn = 1.5;
      drawDoraemon();
    popMatrix();   
    freeSpinAngle += freeSpinSpeed*freeSpinFlagY;
    initPositionX += freeSpinFlagX*freeSpinSpeedX;
    initPositionY += 10*freeSpinFlagY*freeSpinSpeedY;
    if((initPositionX>=width)|(initPositionX<=0)){freeSpinFlagX = freeSpinFlagX *-1;}
    if((initPositionY>=height)|(initPositionY<=0)){freeSpinFlagY = freeSpinFlagY *-1;}
    freeSpinSpeedY+=0.05*freeSpinFlagY;
  }
  // Doraemon running toward you mode
  else 
  {
   pushMatrix();
   translate(initPositionX,initPositionY);
   if (area<3){
     drawDoraemon();
     if (magn<magnMax){
         magn = magn*1.01;
       }
     else{
       feetIndicator = 2;
       armSpeed = 0;
      }
     }
   popMatrix();
  }
}

void mouseClicked(MouseEvent evt) {
  if (evt.getCount() == 2)doubleClicked();
  else{
    if(mouseButton == LEFT){
      mouseAction = 0;
      initPositionX = mouseX;
      initPositionY = mouseY;
      mX = mouseX;
      mY = mouseY;
      magn = 1;
      armSpeed = .1;
      feetIndicator = 1;
      if (mouseX<=width/4){area=0;}
      else if (mouseX>=width*3/4){area=2;}
      else {area=1;}
    }else if (mouseButton == RIGHT){
      // right click, clear the screen;
      mouseAction = 3;
    }
  }
}

void mouseDragged() 
{
  mouseAction = 1;
}

void mouseReleased() {
  mouseAction = 0;
}

void doubleClicked(){
  mouseAction = 2;
  initPositionX = mouseX;
  initPositionY = mouseY;
  magn = 1;
  armSpeed = .1;
  feetIndicator = 1;
}

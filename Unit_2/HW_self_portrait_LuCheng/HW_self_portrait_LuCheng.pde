// Global variables;

int canvasWidth = 1300;
int canvasHeight = 1300;
//PImage img;

// define size of face
float topHeight = 50;
float bottomHeight = topHeight * 3;
float middleHeight = topHeight * 6;
float faceWidth = middleHeight*1.2;
float pupilSize = topHeight/2;

void settings(){
  size(canvasWidth,canvasHeight);
}

void setup(){
  background(200);
  //img = loadImage("Unit_1_LuCheng_output.jpg");
  int r = 0, g = 0, b = 0 ,a = 150;
  int j = 0;
  for (int i = 1 ; i<=canvasHeight; i++){
    j = (canvasHeight-i) % i;
    //j= i % 256;
    stroke(j,j,j,a);
    strokeWeight(14);
    line(0,i,width,i);
  }
  
//  int counting = 50;
//for (int i = 0 ; i<counting; i++){
//    float x = random(canvasWidth), y = random(canvasHeight) , r = random(10,300);
//    fill(0,0,random(255));
//    stroke(20);
//    ellipse(x,y,r,r);
//}
  redraw();
}

//************************************************************************************************
//************************************************************************************************
//  Main DRAW
//************************************************************************************************
//************************************************************************************************


void draw(){

// set the start position point(x0,y0) 
 translate(canvasWidth/2,canvasHeight/10);
  
 drawBody();
  
 drawFace();
  
 drawNose();
 
 drawEyes();
  
 drawEyeBrows();
 
 drawLips();
 
 drawHair();
 
}

//************************************************************************************************
//  BACKGROUND
//************************************************************************************************

void drawBackground(){
  int count = 10;
  for (int i = 0 ; i<count; i++){
    // float x = random(canvasWidth), y = random(canvasHeight) , r = random(10,100);
    float x = i*10, y = i*10 , r = i*10;
    fill(0,255,0);
    stroke(20);
    ellipse(x,y,r,r);
  }
}
  
//************************************************************************************************
//  FACE
//************************************************************************************************

void drawFace(){
  // face
   //define base points of face
  //(x0,y0) Top point
  float x0 = 0, y0 = 0;
  float x1 = -faceWidth/2, y1 = topHeight;
  float x2 = -faceWidth/2, y2 = topHeight + middleHeight;
  //(x3,y3) Chin Point
  float x3 = 0, y3 = topHeight + middleHeight + bottomHeight;
  float x4 = faceWidth/2, y4 = topHeight + middleHeight;
  float x5 = faceWidth/2, y5 = topHeight;

  //fill(239, 213, 182);
  fill(200);
  //fill(224, 209, 172);
  noStroke();
  beginShape();
  curveVertex(x0,y0);
  curveVertex(x0,y0);
  curveVertex(x1,y1);
  curveVertex(x2,y2);
  curveVertex(x3,y3);
  curveVertex(x4,y4);
  curveVertex(x5,y5);
  curveVertex(x0,y0);
  curveVertex(x0,y0);
  endShape();
  
  stroke(100);
  strokeWeight(1);
  beginShape();
  curveVertex(x1,y1);
  curveVertex(x2,y2);
  curveVertex(x3,y3);
  curveVertex(x4,y4);
  curveVertex(x5,y5);
  endShape();
}



//************************************************************************************************
//  EYES
//************************************************************************************************

void drawEyes(){
  // eyes
  
  // pupils
  float xPupilL = - faceWidth/4+5, yPupilL = (topHeight + middleHeight + bottomHeight)/2.1 ; 
  float xPupilR = faceWidth/4-5, yPupilR = (topHeight + middleHeight + bottomHeight)/2.1 ;
  
  fill(240);
  noStroke();
  ellipse(xPupilL-3,yPupilL+6, pupilSize+30,pupilSize+2);
  ellipse(xPupilR+3,yPupilL+6, pupilSize+30,pupilSize+2);
  
  fill(50);
  stroke(110);
  strokeWeight(4);
  ellipse(xPupilL-3,yPupilL+6, pupilSize+8, pupilSize+2);
  ellipse(xPupilR+3,yPupilR+6, pupilSize+8, pupilSize+2);
  
  // sparkle in the pupils
  noStroke();
  fill(200);
  ellipse(xPupilL-2-pupilSize/4,yPupilL+2+pupilSize/4,4,6);
  ellipse(xPupilR+2-pupilSize/4,yPupilR+2+pupilSize/4, 4,6);
  rect(xPupilL-2-pupilSize/4,yPupilL+2+pupilSize/4,8,4);
  rect(xPupilR+2-pupilSize/4,yPupilR+2+pupilSize/4,8,4);

 // eyelids
 
 // left eyelid start and end
  float xLidLeftStart = xPupilL - pupilSize*1.6 , yLidLeftStart = yPupilL + pupilSize/2;
  float xLidLeftEnd = xPupilL + pupilSize , yLidLeftEnd = yPupilL + pupilSize/2;
 
 // left eyelid
  noFill();
  stroke(50);
  strokeWeight(8);
  beginShape();
  curveVertex(xLidLeftStart-pupilSize*2,yLidLeftStart+pupilSize);
  curveVertex(xLidLeftStart,yLidLeftStart);
  curveVertex(xLidLeftStart + pupilSize/2,yLidLeftStart-pupilSize/2);
  curveVertex(xPupilL,yPupilL-pupilSize/2 + 2);
  curveVertex(xLidLeftEnd,yLidLeftEnd);
  curveVertex(xLidLeftEnd+pupilSize/4,yLidLeftEnd+pupilSize);
  endShape();
  // 2nd left lid 
  stroke(70);
  strokeWeight(5);
  beginShape();
  curveVertex(xLidLeftStart,yLidLeftStart);
  curveVertex(xLidLeftStart + pupilSize/2,yLidLeftStart-pupilSize/2+6);
  curveVertex(xPupilL,yPupilL-pupilSize/2 + 3);
  curveVertex(xLidLeftEnd,yLidLeftEnd);
  curveVertex(xLidLeftEnd+pupilSize/4,yLidLeftEnd+pupilSize);
  endShape();
    
  // right eyelid start and end
 float xLidRightStart = xPupilR + pupilSize*1.6, yLidRightStart = yPupilR + pupilSize/2;
 float xLidRightEnd = xPupilR - pupilSize, yLidRightEnd = yPupilR + pupilSize/2;
 
 noFill();
 stroke(50);
 strokeWeight(8);
 beginShape();
  curveVertex(xLidRightStart+pupilSize*2,yLidLeftStart+pupilSize);
  curveVertex(xLidRightStart,yLidLeftStart);
  curveVertex(xLidRightStart - pupilSize/2,yLidRightStart-pupilSize/2);
  curveVertex(xPupilR,yPupilR-pupilSize/2 + 2);
  curveVertex(xLidRightEnd,yLidLeftEnd);
  curveVertex(xLidRightEnd-pupilSize/4,yLidRightEnd+pupilSize);
 endShape();
 
  // 2nd right lid
  stroke(70);
  strokeWeight(5);
  beginShape();
  curveVertex(xLidRightStart,yLidRightStart);
  curveVertex(xLidRightStart - pupilSize/2,yLidRightStart-pupilSize/2+6);
  curveVertex(xPupilR,yPupilR-pupilSize/2 + 3);
  curveVertex(xLidRightEnd,yLidRightEnd);
  curveVertex(xLidRightEnd-pupilSize/4,yLidRightEnd+pupilSize);
  endShape();
  
  //Eyes conners
  noStroke();
  fill(80);
  triangle(xLidLeftStart,yLidLeftStart,xLidLeftStart + pupilSize/2,yLidLeftStart-pupilSize/3, xLidLeftStart + pupilSize/1.5,yLidLeftStart+pupilSize/3.5);
  triangle(xLidLeftEnd,yLidLeftEnd,xLidLeftEnd - pupilSize/4,yLidLeftStart-pupilSize/5, xLidLeftEnd - pupilSize/4,yLidLeftStart+pupilSize/5);
  
  noStroke();
  fill(80);
  triangle(xLidRightStart,yLidRightStart,xLidRightStart - pupilSize/2,yLidRightStart-pupilSize/3, xLidRightStart - pupilSize/1.5,yLidRightStart+pupilSize/3.5);
  triangle(xLidRightEnd,yLidRightEnd,xLidRightEnd + pupilSize/4,yLidRightStart-pupilSize/5, xLidRightEnd + pupilSize/4,yLidLeftStart+pupilSize/5);
  

//  GLASSES
  rectMode(CENTER);
  noFill();
  stroke(50);
  strokeWeight(8);
  float xRectCenterLeft = xPupilL-19 , yRectCenterLeft = yPupilL+20;
  float xRectCenterRight = xPupilR+19 , yRectCenterRight = yPupilL+20;
  float rectLength = faceWidth/2.5;
  float rectWidth = faceWidth * .2;
  rect(xRectCenterLeft,yRectCenterLeft,rectLength, rectWidth,20);
  rect(xRectCenterRight,yRectCenterRight,rectLength, rectWidth,20);
  
  curve(xRectCenterLeft,yRectCenterLeft + rectLength*1.5 , xRectCenterLeft+rectLength/2,yRectCenterLeft, xRectCenterRight-rectLength/2, yRectCenterRight,xRectCenterRight,yRectCenterRight + rectLength*1.5 );
  
  // Glasses reflection
  fill(230);
  noStroke();
  ellipse(xRectCenterLeft,yRectCenterLeft+rectWidth/4, pupilSize*2,pupilSize*.4);
  ellipse(xRectCenterRight-rectLength/6,yRectCenterRight+rectWidth/4, pupilSize*2,pupilSize*.4);
 
}

//************************************************************************************************
//  EYEBROWS
//************************************************************************************************

void drawEyeBrows(){
  //eyebrows
 
 //left eyebrow start and end
 
 float xPupilL = - faceWidth/4+5, yPupilL = (topHeight + middleHeight + bottomHeight)/2.1 ; 
  float xPupilR = faceWidth/4-5, yPupilR = (topHeight + middleHeight + bottomHeight)/2.1 ;
  
 float xBrowLeftStart = - faceWidth/8+5, yBrowLeftStart = (topHeight + middleHeight + bottomHeight)/2.1 - pupilSize*1.4;
 float xBrowLeftEnd = - faceWidth*.45 +5, yBrowLeftEnd = (topHeight + middleHeight + bottomHeight)/2.1 - pupilSize;
 float xBrowRightStart = faceWidth/8-5, yBrowRightStart = (topHeight + middleHeight + bottomHeight)/2.1 - pupilSize*1.4;
 float xBrowRightEnd = faceWidth* .45 -5, yBrowRightEnd = (topHeight + middleHeight + bottomHeight)/2.1 - pupilSize;
 
 //ellipse(xBrowLeftStart,yBrowLeftStart,10,10);
 //ellipse(xBrowLeftEnd,yBrowLeftEnd,10,10);
 //ellipse(xBrowRightStart,yBrowRightStart,10,10);
 //ellipse(xBrowRightEnd,yBrowRightEnd,10,10);
 
 float browSizeLeft = abs(xBrowLeftStart - xBrowLeftEnd);
 float browThickLeft = pupilSize*.7;
 float browSizeRight = abs(xBrowRightStart - xBrowRightEnd);
 float browThickRight = pupilSize*.7;
 
 // left eye brow
 fill(80);
 noStroke();
 beginShape();
 curveVertex(xBrowLeftStart,yBrowLeftStart);
 curveVertex(xBrowLeftStart,yBrowLeftStart);
 curveVertex(xBrowLeftStart-browSizeLeft/4,yBrowLeftStart - browThickLeft/3) ;
 curveVertex(xBrowLeftStart-browSizeLeft/2,yBrowLeftStart - browThickLeft/2) ;
 curveVertex(xBrowLeftStart-browSizeLeft*.75,yBrowLeftStart - browThickLeft/3) ;
 curveVertex(xBrowLeftEnd,yBrowLeftEnd);
 curveVertex(xBrowLeftEnd + browSizeLeft/6 ,yBrowLeftEnd);
 curveVertex(xBrowLeftEnd + browSizeLeft/2,yBrowLeftEnd-browThickLeft/3);
 curveVertex(xBrowLeftStart - browSizeLeft/15,yBrowLeftStart+browThickLeft/2);
 curveVertex(xBrowLeftStart,yBrowLeftStart);
 curveVertex(xBrowLeftStart,yBrowLeftStart);
 endShape();
 
 // right eye brow
 beginShape();
 curveVertex(xBrowRightStart,yBrowRightStart);
 curveVertex(xBrowRightStart,yBrowRightStart);
 curveVertex(xBrowRightStart+browSizeRight/4,yBrowRightStart - browThickRight/3) ;
 curveVertex(xBrowRightStart+browSizeRight/2,yBrowRightStart - browThickRight/2) ;
 curveVertex(xBrowRightStart+browSizeRight*.75,yBrowRightStart - browThickRight/3) ;
 curveVertex(xBrowRightEnd,yBrowLeftEnd);
 curveVertex(xBrowRightEnd - browSizeRight/6 ,yBrowRightEnd);
 curveVertex(xBrowRightEnd - browSizeRight/2,yBrowRightEnd-browThickRight/3);
 curveVertex(xBrowRightStart + browSizeRight/15,yBrowRightStart+browThickRight/2);
 curveVertex(xBrowRightStart,yBrowRightStart);
 curveVertex(xBrowRightStart,yBrowRightStart);
 endShape();
}

//************************************************************************************************
//  NOSE
//************************************************************************************************

void drawNose(){
  // Nose
 
 float noseWidth = faceWidth/5;
 float noseHeight = (topHeight + middleHeight + bottomHeight)/3; 
 // middle lowest point of nose
 float xNoseBottomMiddle = 0, yNoseBottomMiddle = topHeight + middleHeight;
 // base points of nose
 float xNoseBottomLeft = - noseWidth*2/5, yNoseBottomLeft = yNoseBottomMiddle - noseWidth/17 ;
 float xNoseBottomRight = noseWidth*2/5, yNoseBottomRight = yNoseBottomMiddle - noseWidth/17 ;
 
 float xNostrilLeft = - noseWidth/5, yNosetrilLeft = yNoseBottomMiddle - noseWidth/11;
 float xNostrilRight = noseWidth/5, yNosetrilRight = yNoseBottomMiddle - noseWidth/11 ;
 
 float xNoseSideLeft = - noseWidth/2 ,yNoseSideLeft = yNoseBottomMiddle - noseWidth/9;
 float xNoseSideRight = noseWidth/2 ,yNoseSideRight = yNoseBottomMiddle - noseWidth/9;
 
 //ellipse(xNoseBottomMiddle,yNoseBottomMiddle,10,10);
 //ellipse(xNoseBottomLeft,yNoseBottomLeft,10,10);
 //ellipse(xNoseBottomRight,yNoseBottomRight,10,10);
 //ellipse(xNostrilLeft,yNosetrilLeft,10,10);
 //ellipse(xNostrilRight,yNosetrilRight,10,10);
 //ellipse(xNoseSideLeft,yNoseSideLeft,10,10);
 //ellipse(xNoseSideRight,yNoseSideRight,10,10);
 
 //fill(150);
 //noStroke();
 //beginShape();
 //curveVertex(xLidLeftEnd+pupilSize,yLidLeftEnd);
 //curveVertex(xLidLeftEnd+pupilSize,yLidLeftEnd);
 //curveVertex(xNoseSideLeft,yNoseSideLeft);
 //curveVertex(xNoseBottomLeft,yNoseBottomLeft);
 //curveVertex(xNostrilLeft,yNosetrilLeft);
 //curveVertex(xNoseBottomMiddle,yNoseBottomMiddle);
 //curveVertex(xNostrilRight,yNosetrilRight);
 //curveVertex(xNoseBottomRight,yNoseBottomRight);
 //curveVertex(xNoseSideRight,yNoseSideRight);
 //curveVertex(xLidRightEnd-pupilSize,yLidRightEnd);
 //curveVertex(xLidRightEnd-pupilSize,yLidRightEnd);
 //endShape();
 
 float xNoseTopLeft =  xNoseBottomLeft - 10, yNoseTopLeft = yNoseBottomLeft - noseWidth/4;
 float xNoseTopRight =  xNoseBottomRight + 10, yNoseTopRight = yNoseBottomRight - noseWidth/4;
 
 float xConBridge1 = -30, yConBridge1 = yNoseBottomMiddle - noseHeight*2/3;
 float xConBridge2 = -25, yConBridge2 = yNoseBottomMiddle - noseHeight/3;
 
 
 float xConNose1 = xNoseTopLeft-noseWidth/10, yConNose1 = yNoseTopLeft - noseWidth/6 ;
 float xConNose2 = xNoseTopLeft-noseWidth/5, yConNose2 = yNoseBottomLeft + 10 ;
 
 float xConNose3 = xNoseBottomLeft, yConNose3 = yNoseBottomLeft + noseWidth/4;
 float xConNose4 = xNoseBottomRight, yConNose4 = yNoseBottomRight + noseWidth/4;
 
 float xConNose5 = xNoseTopRight+noseWidth/5, yConNose5 = yNoseBottomRight + 10 ;
 float xConNose6 = xNoseTopRight+noseWidth/10, yConNose6 = yNoseTopRight - noseWidth/6 ;
 
 //ellipse(xNoseTopLeft,yNoseTopLeft,10,10);
 //ellipse(xNoseTopRight,yNoseTopRight,10,10);
 //ellipse(xCon1, yCon1,10,10);
 //ellipse(xCon2, yCon2,10,10);
 //ellipse(xCon3, yCon3,10,10);
 //ellipse(xCon4, yCon4,10,10);
 //ellipse(xCon5, yCon5,10,10);
 //ellipse(xCon6, yCon6,10,10);
 //ellipse(xConBridge1, yConBridge1,10,10);
 //ellipse(xConBridge2, yConBridge2,10,10);
 
 noFill();
 //fill(160);
 strokeWeight(10);
 stroke(160);
 beginShape();
 //vertex(xNoseTopLeft,yNoseTopLeft);
 vertex(-pupilSize*0.7, topHeight + middleHeight/1.5);
 bezierVertex(xConBridge1, yConBridge1, xConBridge2, yConBridge2, xNoseTopLeft,yNoseTopLeft);
 bezierVertex(xConNose1, yConNose1, xConNose2, yConNose2, xNoseBottomLeft,yNoseBottomLeft);
 bezierVertex(xConNose3, yConNose3, xConNose4, yConNose4, xNoseBottomRight,yNoseBottomRight);
 bezierVertex(xConNose5, yConNose5, xConNose6, yConNose6, xNoseTopRight,yNoseTopRight);
 endShape();
}

//************************************************************************************************
//  LIPS
//************************************************************************************************

void drawLips(){
  //Lips
 
 //Lips base points
 float lipWidth = faceWidth/2.5 ;
 float lipThickness = pupilSize * 1.4 ;
 
 float xLipUpperMiddle = 0, yLipUpperMiddle = topHeight + middleHeight + bottomHeight/3;
 float xLipUnderMiddle = 0, yLipUnderMiddle = yLipUpperMiddle + lipThickness;
 float xLipLeft = -lipWidth/2, yLipLeft = yLipUpperMiddle - 8;
 float xLipRight = lipWidth/2, yLipRight = yLipUpperMiddle - 8;
 
 float xConLip1 = - lipWidth/3, yConLip1 = yLipUpperMiddle - 17;
 float xConLip2 = - lipWidth/6, yConLip2 = yLipUpperMiddle - 16;
 
 float xConLip3 = lipWidth/6, yConLip3 = yLipUpperMiddle - 16;
 float xConLip4 = lipWidth/3, yConLip4 = yLipUpperMiddle - 17;
 
 float xConLip5 = lipWidth/3, yConLip5 = yLipUnderMiddle + lipThickness/3;
 float xConLip6 = -lipWidth/3, yConLip6 = yLipUnderMiddle + lipThickness/3;
 
 float xConLip7 = - lipWidth/3, yConLip7 = yLipUnderMiddle - 15;
 float xConLip8 =  lipWidth/3, yConLip8 = yLipUnderMiddle - 15;
 
 //ellipse(xLipUpperMiddle,yLipUpperMiddle,5,5);
 //ellipse(xLipUnderMiddle,yLipUnderMiddle,5,5);
 //ellipse(xLipLeft,yLipLeft,5,5);
 //ellipse(xLipRight,yLipRight,5,5);
 //fill(255,0,0);
 //ellipse(xConLip1,yConLip1,5,5);
 //ellipse(xConLip2,yConLip2,5,5);
 
 fill(140);
 //stroke(0);
 //strokeWeight(1);
 noStroke();
 beginShape();
 vertex(xLipLeft,yLipLeft);
 bezierVertex(xConLip1, yConLip1, xConLip2, yConLip2, xLipUpperMiddle,yLipUpperMiddle);
 bezierVertex(xConLip3, yConLip3, xConLip4, yConLip4, xLipRight,yLipRight);
 bezierVertex(xConLip8, yConLip8, xConLip7, yConLip7, xLipLeft,yLipLeft);
 endShape();
 
 fill(160);
 //stroke(0);
 //strokeWeight(1);
 noStroke();
 beginShape();
 vertex(xLipLeft+10,yLipLeft+5);
 //vertex(xLipLeft+pupilSize*.4,yLipLeft+10);
 bezierVertex(xConLip7, yConLip7, xConLip8, yConLip8, xLipRight-10,yLipRight+5);
 bezierVertex(xConLip5, yConLip5, xConLip6, yConLip6, xLipLeft+10,yLipLeft+5);
 endShape();
}

//************************************************************************************************
//  BODY
//************************************************************************************************

void drawBody(){

// Neck and arms
// basic points of neck shouders and arms

float neckWidth = faceWidth;
float neckHeight = bottomHeight;
float armLenth = (topHeight + middleHeight +bottomHeight)*1; 

float xNeckTopLeft = - faceWidth*5/16 , yNeckTopLeft = topHeight + middleHeight + bottomHeight*2/3;
float xNeckEndLeft = - faceWidth*5/14, yNeckEndLeft = yNeckTopLeft + bottomHeight*3/4;
float xShoulderTopLeft = xNeckEndLeft - faceWidth/3, yShoulderTopLeft = yNeckEndLeft + bottomHeight/2;
float xShoulderEndLeft = xShoulderTopLeft - bottomHeight, yShoulderEndLeft =yShoulderTopLeft + bottomHeight*7/6 ;
float xArmLeft = xShoulderEndLeft + faceWidth/15, yArmLeft = yShoulderEndLeft + armLenth;

float xNeckTopRight =  faceWidth*5/16 , yNeckTopRight = topHeight + middleHeight + bottomHeight*2/3;
float xNeckEndRight =  faceWidth*5/14, yNeckEndRight = yNeckTopLeft + bottomHeight*3/4;
float xShoulderTopRight = xNeckEndRight + faceWidth/3, yShoulderTopRight = yNeckEndLeft + bottomHeight/2;
float xShoulderEndRight = xShoulderTopRight + bottomHeight, yShoulderEndRight =yShoulderTopLeft + bottomHeight*7/6 ;
float xArmRight = xShoulderEndRight - faceWidth/10, yArmRight = yShoulderEndLeft + armLenth;

float xConNeckLeft1 = xNeckTopLeft + faceWidth/16, yConNeckLeft1 = yNeckTopLeft + bottomHeight/3 ;
float xConNeckLeft2 = xNeckTopLeft + faceWidth/18, yConNeckLeft2 = yNeckTopLeft + bottomHeight*2/3 ;
float xConShoulderLeft1 = xNeckEndLeft - abs(xNeckEndLeft-xShoulderTopLeft)/3, yConShoulderLeft1 = yNeckEndLeft + abs(yNeckEndLeft-yShoulderTopLeft)/3+10;
float xConShoulderLeft2 = xNeckEndLeft - abs(xNeckEndLeft-xShoulderTopLeft)*2/3, yConShoulderLeft2 = yNeckEndLeft + abs(yNeckEndLeft-yShoulderTopLeft)*2/3+10;
float xConShoulderLeft3 = xShoulderTopLeft - neckWidth/6, yConShoulderLeft3 =  yShoulderTopLeft + neckHeight/6;
float xConShoulderLeft4 = xShoulderEndLeft + neckWidth/9, yConShoulderLeft4 = yShoulderEndLeft  - neckHeight*3/4;

float xConNeckRight1 = xNeckTopRight - faceWidth/16, yConNeckRight1 = yNeckTopRight + bottomHeight/3 ;
float xConNeckRight2 = xNeckTopRight - faceWidth/18, yConNeckRight2 = yNeckTopRight + bottomHeight*2/3 ;
float xConShoulderRight1 = xNeckEndRight + abs(xNeckEndRight-xShoulderTopRight)/3, yConShoulderRight1 = yNeckEndRight + abs(yNeckEndRight-yShoulderTopRight)/3+10;
float xConShoulderRight2 = xNeckEndRight + abs(xNeckEndRight-xShoulderTopRight)*2/3, yConShoulderRight2 = yNeckEndRight + abs(yNeckEndRight-yShoulderTopRight)*2/3+10;
//float xConShoulderRight3 = xShoulderTopRight + abs(xShoulderTopRight-xShoulderEndRight)/3, yConShoulderRight3 = yShoulderTopRight +abs(yShoulderTopRight - yShoulderEndRight)/3 - 30;
//float xConShoulderRight4 = xShoulderTopRight + abs(xShoulderTopRight-xShoulderEndRight)*2/3, yConShoulderRight4 = yShoulderTopRight +abs(yShoulderTopRight - yShoulderEndRight)*2/3 - 40;

float xConShoulderRight3 = xShoulderTopRight + neckWidth/6, yConShoulderRight3 =  yShoulderTopRight + neckHeight/6;
float xConShoulderRight4 = xShoulderEndRight - neckWidth/9, yConShoulderRight4 = yShoulderEndRight  - neckHeight*3/4;


//stroke(1);
//strokeWeight(1);
//ellipse(xNeckTopLeft,yNeckTopLeft,5,5);
//ellipse(xNeckEndLeft,yNeckEndLeft,5,5);
//ellipse(xShoulderTopLeft,yShoulderTopLeft,5,5);
//ellipse(xShoulderEndLeft,yShoulderEndLeft,20,20);

//ellipse(xConNeckLeft1,yConNeckLeft1,5,5);
//ellipse(xConNeckLeft2,yConNeckLeft2,5,5);
//ellipse(xConShoulderLeft1,yConShoulderLeft1,5,5);
//ellipse(xConShoulderLeft2,yConShoulderLeft2,5,5);
//ellipse(xConShoulderLeft3,yConShoulderLeft3,10,10);
//ellipse(xConShoulderLeft4,yConShoulderLeft4,10,10);

//ellipse(xArmLeft,yArmLeft,5,5);

//ellipse(xConShoulderRight3,yConShoulderRight3,10,10);
//ellipse(xConShoulderRight4,yConShoulderRight4,10,10);
//ellipse(xNeckTopRight,yNeckTopRight,5,5);
//ellipse(xNeckEndRight,yNeckEndRight,5,5);
//ellipse(xShoulderTopRight,yShoulderTopRight,10,5);
//ellipse(xShoulderEndRight,yShoulderEndRight,20,20);
//ellipse(xArmRight,yArmRight,5,5);

noStroke();
fill(170);
beginShape();
curveVertex(xNeckTopLeft,yNeckTopLeft);
curveVertex(xNeckTopLeft,yNeckTopLeft);
curveVertex(xConNeckLeft1,yConNeckLeft1);
curveVertex(xConNeckLeft2,yConNeckLeft2);
curveVertex(xNeckEndLeft,yNeckEndLeft);
curveVertex(xConShoulderLeft1,yConShoulderLeft1);
curveVertex(xConShoulderLeft2,yConShoulderLeft2);
curveVertex(xShoulderTopLeft,yShoulderTopLeft);
curveVertex(xConShoulderLeft3,yConShoulderLeft3);
curveVertex(xConShoulderLeft4,yConShoulderLeft4);
curveVertex(xShoulderEndLeft,yShoulderEndLeft);
curveVertex(xArmLeft,yArmLeft);

curveVertex(xArmRight,yArmRight);
curveVertex(xShoulderEndRight,yShoulderEndRight);
curveVertex(xConShoulderRight4,yConShoulderRight4);
curveVertex(xConShoulderRight3,yConShoulderRight3);
curveVertex(xShoulderTopRight,yShoulderTopRight);
curveVertex(xConShoulderRight2,yConShoulderRight2);
curveVertex(xConShoulderRight1,yConShoulderRight1);
curveVertex(xNeckEndRight,yNeckEndRight);
curveVertex(xConNeckRight2,yConNeckRight2);
curveVertex(xConNeckRight1,yConNeckRight1);
curveVertex(xNeckTopRight,yNeckTopRight);
curveVertex(xNeckTopRight,yNeckTopRight);
endShape();

// Clothes

//basic points for clothes
float xClothMiddleCollar = 0, yClothMiddleCollar = yShoulderEndLeft ;
float xClothNeckLeft = xNeckEndLeft , yClothNeckLeft = yNeckEndLeft;
float xClothSleeveLeft = xShoulderTopLeft, yClothSleeveLeft = yShoulderTopLeft ; 
float xClothWaistLeft = xShoulderTopLeft - 20,  yClothWaistLeft = yShoulderTopLeft + neckHeight; 

float xClothNeckRight = xNeckEndRight ,  yClothNeckRight = yNeckEndRight;
float xClothSleeveRight = xShoulderTopRight, yClothSleeveRight = yShoulderTopRight;
float xClothWaistRight = xShoulderTopRight + 20,  yClothWaistRight = yShoulderTopRight + neckHeight;

fill(100);
noStroke();

beginShape();
//texture(img);
curveVertex(xClothMiddleCollar,yClothMiddleCollar);
curveVertex(xClothMiddleCollar,yClothMiddleCollar);
curveVertex(xClothSleeveLeft,yClothSleeveLeft);
curveVertex(xClothWaistLeft,yClothWaistLeft);
curveVertex(xArmLeft+70,yArmLeft);
curveVertex(xArmRight-70,yArmRight);
curveVertex(xClothWaistRight,yClothWaistRight);
curveVertex(xClothSleeveRight,yClothSleeveRight);
curveVertex(xClothMiddleCollar,yClothMiddleCollar);
curveVertex(xClothMiddleCollar,yClothMiddleCollar);
endShape();

//Clothes Pattern

//stroke(0);
//beginShape();
//  texture(img);
//  vertex(-150, yShoulderEndLeft + 10, 0, 0);
//  vertex(150,yShoulderEndLeft + 10, 1450, 0);
//  vertex(150,yShoulderEndLeft + 350, 1450,1700);
//  vertex(-150,yShoulderEndLeft + 350,0, 1700);
//endShape();

}

//************************************************************************************************
//  HAIR
//************************************************************************************************

void drawHair(){
// basic points of hair
  
// Top points
float xHairTopMiddleUp = 0, yHairTopMiddleUp = - topHeight*5/6;

//start point
float xHairTopMiddleLow = 0, yHairTopMiddleLow = topHeight/4 ; 
// Left Fringe curve points
float xHairFringe1 = - faceWidth/4, yHairFringe1 = topHeight;
float xHairFringe2 = - faceWidth/3.5, yHairFringe2 = topHeight + middleHeight/3;
float xHairFringe3 = - faceWidth/2, yHairFringe3 = topHeight + middleHeight*2/3;


// left Hair curve points
float xHairLeftr1 = - faceWidth/3.1, yHairLeftr1 = topHeight + middleHeight + bottomHeight/2;
float xHairLeftr2 = - faceWidth/4.5 , yHairLeftr2 = topHeight + middleHeight + bottomHeight*1.2;
float xHairLeftr3 = - faceWidth/4.5 , yHairLeftr3 = topHeight + middleHeight + bottomHeight*2;
float xHairLeftr4 = - faceWidth/2 , yHairLeftr4 = (topHeight + middleHeight + bottomHeight)*3/2;

float xHairLeftl1 = - faceWidth/1.2, yHairLeftl1 = topHeight + middleHeight + bottomHeight*2 ;
float xHairLeftl2 = - faceWidth/1.5 , yHairLeftl2 = topHeight + middleHeight + bottomHeight;
float xHairLeftl3 = - faceWidth/1.4, yHairLeftl3 = topHeight + middleHeight * 3/4; 


// right Hair curve points
float xHairRightr1 = faceWidth *.62, yHairRightr1 = topHeight + middleHeight/4;
float xHairRightr2 = faceWidth *.6, yHairRightr2 = topHeight + middleHeight;
float xHairRightr3 = faceWidth *.7, yHairRightr3 = topHeight + middleHeight + bottomHeight*1.5;
float xHairRightl1 = faceWidth/2 , yHairRightl1 = (topHeight + middleHeight + bottomHeight)*3/2;
float xHairRightl2 = faceWidth/4 , yHairRightl2 = topHeight + middleHeight + bottomHeight*1.5;
float xHairRightl3 = faceWidth/3.7, yHairRightl3 = topHeight + middleHeight + bottomHeight/1.4;
float xHairRightl4 = faceWidth/2.2, yHairRightl4 = topHeight + middleHeight;
float xHairRightl5 = faceWidth/2.1, yHairRightl5 = topHeight + middleHeight/4;
float xHairRightl6 = faceWidth/4.3, yHairRightl6 = topHeight/1.3;

// extra Hair points
float xHairRightl7 = faceWidth/6, yHairRightl7 = topHeight + middleHeight + bottomHeight*2.2;

//strokeWeight(1);
//stroke(1);
//ellipse(xHairTopMiddleUp,yHairTopMiddleUp,5,5);
//ellipse(xHairTopMiddleLow,yHairTopMiddleLow,5,5);
//ellipse(xHairFringe1,yHairFringe1,5,5);
//ellipse(xHairFringe2,yHairFringe2,5,5);
//ellipse(xHairFringe3,yHairFringe3,5,5);

//ellipse(xHairLeftr1,yHairLeftr1,5,5);
//ellipse(xHairLeftr2,yHairLeftr2,5,5);
//ellipse(xHairLeftr3,yHairLeftr3,5,5);
//ellipse(xHairLeftr4,yHairLeftr4,5,5);

//ellipse(xHairLeftl1,yHairLeftl1,5,5);
//ellipse(xHairLeftl2,yHairLeftl2,5,5);
//ellipse(xHairLeftl3,yHairLeftl3,5,5);

//ellipse(xHairRightr1,yHairRightr1,5,5);
//ellipse(xHairRightr2,yHairRightr2,5,5);
//ellipse(xHairRightr3,yHairRightr3,5,5);
//ellipse(xHairRightl1,yHairRightl1,5,5);
//ellipse(xHairRightl2,yHairRightl2,5,5);
//ellipse(xHairRightl3,yHairRightl3,5,5);
//ellipse(xHairRightl4,yHairRightl4,5,5);
//ellipse(xHairRightl5,yHairRightl5,5,5);
//ellipse(xHairRightl6,yHairRightl6,5,5);
//ellipse(xHairRightl7,yHairRightl7,5,5);

// Hair overall
fill(90);
noStroke();
beginShape();
curveVertex(xHairTopMiddleLow,yHairTopMiddleLow);
curveVertex(xHairTopMiddleLow,yHairTopMiddleLow);

curveVertex(xHairFringe1,yHairFringe1);
curveVertex(xHairFringe2,yHairFringe2);
curveVertex(xHairFringe3,yHairFringe3);

curveVertex(xHairLeftr1,yHairLeftr1);
curveVertex(xHairLeftr2,yHairLeftr2);
curveVertex(xHairLeftr3,yHairLeftr3);
curveVertex(xHairLeftr4,yHairLeftr4);

curveVertex(xHairLeftl1,yHairLeftl1);
curveVertex(xHairLeftl2,yHairLeftl2);
curveVertex(xHairLeftl3,yHairLeftl3);

curveVertex (-faceWidth/2, topHeight/2);
curveVertex(xHairTopMiddleUp,yHairTopMiddleUp);
curveVertex (faceWidth/2, topHeight/2);
curveVertex (xHairRightr1,yHairRightr1);
curveVertex (xHairRightr2,yHairRightr2);
curveVertex (xHairRightr3,yHairRightr3);
curveVertex (xHairRightl1,yHairRightl1);
curveVertex (xHairRightl2,yHairRightl2);
curveVertex (xHairRightl3,yHairRightl3);
curveVertex (xHairRightl4,yHairRightl4);
curveVertex (xHairRightl5,yHairRightl5);
curveVertex (xHairRightl6,yHairRightl6);
curveVertex(xHairTopMiddleLow,yHairTopMiddleLow);
curveVertex(xHairTopMiddleLow,yHairTopMiddleLow);
endShape();

//Hair Details
noFill();
strokeWeight(3);
stroke(30);
//noStroke();
int count = 30;
//left
float delta1 = abs(yHairTopMiddleUp - yHairTopMiddleLow);
float delta2 = abs(xHairFringe3 - xHairLeftl3);
float delta3 = abs(xHairLeftr1 -  xHairLeftl2);
float delta4 = abs(xHairLeftr3 -  xHairLeftl1);
//right
float delta5 = abs(xHairRightr1 - xHairRightl5);
float delta6 = abs(xHairRightr3 - xHairRightl2);

for(int i = 1; i<=count; i = i+1){
beginShape();
curveVertex(xHairTopMiddleLow-i/2,yHairTopMiddleLow-delta1/count*i);
curveVertex(xHairTopMiddleLow-i/2,yHairTopMiddleLow-delta1/count*i);
curveVertex(xHairFringe1-(delta2+20)/count*i,yHairFringe1);
curveVertex(xHairFringe2-(delta2+30)/count*i,yHairFringe2);
curveVertex(xHairFringe3-delta2/count*i,yHairFringe3);
curveVertex(xHairLeftr1-delta3/count*i,yHairLeftr1);
curveVertex(xHairLeftr2-(delta3+20)/count*i,yHairLeftr2);
curveVertex(xHairLeftr3-delta4/count*i,yHairLeftr3);
curveVertex(xHairLeftr4 - i,yHairLeftr4);
curveVertex(xHairLeftr4 - i,yHairLeftr4);
endShape();
}

count = 30;
for(int i = 1; i<=count; i = i+1){
beginShape();
curveVertex(400,yHairLeftr4+100);
curveVertex(xHairLeftr4,yHairLeftr4);
curveVertex(xHairLeftl1+delta4/count*i,yHairLeftl1);
curveVertex(xHairLeftl2+delta3/count*i,yHairLeftl2);
curveVertex(xHairLeftl3+delta2/count*i,yHairLeftl3);
curveVertex (-faceWidth/2+delta2/count*i, topHeight/2);
curveVertex(xHairTopMiddleUp,yHairTopMiddleUp+delta1/count*i);
curveVertex(xHairTopMiddleUp,yHairTopMiddleUp+delta1/count*i);
endShape();
}

count = 30;
for(int i = 1; i<=count; i = i+1){
beginShape();
curveVertex(xHairTopMiddleUp,yHairTopMiddleUp+delta1/count*i);
curveVertex(xHairTopMiddleUp,yHairTopMiddleUp+delta1/count*i);
curveVertex (faceWidth/2-(delta5+20)/count*i, topHeight/2);
curveVertex (xHairRightr1-(delta5+20)/count*i,yHairRightr1);
curveVertex (xHairRightr2-delta5/count*i,yHairRightr2);
curveVertex (xHairRightr3-delta6/count*i,yHairRightr3);
curveVertex (xHairRightl1,yHairRightl1);
curveVertex (xHairRightl2,yHairRightl2);
curveVertex (xHairRightl2,yHairRightl2);
endShape();
}

count = 20;
for(int i = 1; i<=count; i = i+1){
beginShape();
curveVertex(xHairRightl1,yHairRightl1);
curveVertex(xHairRightl1,yHairRightl1);
curveVertex(xHairRightl2+delta6/count*i,yHairRightl2);
curveVertex(xHairRightl3+delta5/count*i,yHairRightl3);
curveVertex(xHairRightl4+delta5/count*i,yHairRightl4);
curveVertex(xHairRightl5+delta5/count*i,yHairRightl5);
curveVertex(xHairRightl6+delta5/count*i,yHairRightl6);
curveVertex(xHairTopMiddleLow+5,yHairTopMiddleLow - delta1/count*i);
curveVertex(xHairTopMiddleLow+5,yHairTopMiddleLow - delta1/count*i);
endShape();
}
}

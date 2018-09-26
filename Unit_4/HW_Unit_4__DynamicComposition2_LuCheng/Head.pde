void drawHead(){
  blinkIndicator = 1;
  // dizzy eyes
  if (mouseAction == 1) {
  blinkIndicator = 2;
  }
  else {
    // blink status
   if (blinkCount==blinkSpeed){
    blinkIndicator = blinkIndicator*-1; 
    blinkCount = 0; }
    blinkCount += 1;
  }
  
  //head and face
    
    //noStroke();
    stroke(50);
    strokeWeight(magn);
    
    //Doraemon Blue
    fill(doraemonColor);
    //head
    ellipse(0,0,headR*1.05,headR);
    
    //face
    fill(255);
    ellipse(0,(headR-faceR)/2, faceR*1.2,faceR);
       
    //eyes
    drawEyes(blinkIndicator);
    
    //nose, mouth
    
    pushMatrix();
      stroke(50);
      strokeWeight(magn);
      line(0, -headR/12,0, headR/5);
      
      fill(203,11,43);
      ellipse(0, -headR/12, headR/8,headR/8);
      
      fill(200,180);
      noStroke();
      ellipse(-headR/40, -headR/11, headR/24,headR/24);
      fill(255);
      ellipse(-headR/40, -headR/11, headR/36,headR/36);
      
      stroke(50);
      strokeWeight(magn);
      
      line(-headR/6, 0, -headR*.3,0);
      line(headR/6, 0, headR*.3,0);
      line(-headR/6,-headR/40, -headR*.3,-headR/20);
      line(headR/6,-headR/40, headR*.3,-headR/20);
      
      line(-headR/6,headR/40, -headR*.3,headR/20);
      line(headR/6,headR/40, headR*.3,headR/20);
      
      stroke(50);
      strokeWeight(magn);
      
      fill(110*mouthOpen,0,0);
      beginShape();
        curveVertex(headR/3, headR/12);
        curveVertex(headR/3, headR/12);
        curveVertex(headR/6, headR/6);
        curveVertex(0, headR/5);
        curveVertex(headR/-6, headR/6);
        curveVertex(-headR/3, headR/12);
        
        curveVertex(headR/-6, headR/5*mouthOpen*.8);
        curveVertex(0, headR/5*mouthOpen);
        curveVertex(headR/6, headR/5*(mouthOpen*.8));
        
        curveVertex(headR/3, headR/12);
        curveVertex(headR/3, headR/12);
      endShape();
       
      mouthOpen = mouthOpen + .03*mouthFlag;
      if ((mouthOpen >= mouthMax)|(mouthOpen<=1)) {mouthFlag = mouthFlag *-1;}
      //println(mouthOpen);
    popMatrix();
    
}

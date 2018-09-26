void drawBody(){
  if ((stepCount%stepSpeed)==0){feetIndicator = feetIndicator*-1;}
  stepCount += 1;
    
  pushMatrix();
    translate(0,headR*.8);
    rectMode(CENTER);
    stroke(50);
    strokeWeight(magn);
    bodyWidth =  headR*.75;
    bodyLength = headR*.8 ; 
    
    // Stand Feet
    drawStandFeet(feetIndicator);
    
    // Arms
    drawArms();
     
    // body 
    pushMatrix();
      fill(doraemonColor);
      stroke(50);
      strokeWeight(magn);
      //noStroke();
      rect(0,0,bodyWidth,bodyLength,200);
      fill(200);
      arc(0,headR*.41,headR*.1,headR*.1,PI,2*PI);
      
      // belly 
       fill(255);
       ellipse(0,0, headR/1.7,headR/2);   
       //pocket
       fill(255);
       arc(0,-headR*.05,headR*.4,headR*.4,0,PI);
       line(-headR*.2,-headR*.05,headR*.2,-headR*.05);
     popMatrix();
     
     drawWalkFeet(feetIndicator);
    
     //collar and bell 
     pushMatrix();
       translate(0,-headR*.35);
       fill(255,0,0);
       rect(0,0, headR*2/3,headR*.1,80);
       fill(255,255,0);
       pushMatrix();
         translate(0,headR*.07);
         ellipse(0,0,headR*.15,headR*.15);
         stroke(50);
         strokeWeight(magn*2);
         line(-headR*.15/2,0,headR*.15/2,0);
         
         strokeWeight(magn);
         fill(0);
         ellipse(0,headR*.03,headR*.03,headR*.03);
         line(0,headR*.03,0,headR*.15/2);
         //line()
       popMatrix();
     popMatrix();
          
     
   popMatrix();
   
   
}

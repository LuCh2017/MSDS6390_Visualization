void drawStandFeet(int indicator){
  pushMatrix();
    translate(0,headR*.4);
    fill(255);
    stroke(50);
    strokeWeight(magn);
    //left
    if (indicator == 1){            
         ellipse(-bodyLength*.3,0,bodyLength*.5,bodyLength*.25);
       }
    // right
    else if(indicator == -1) {      
         ellipse(bodyLength*.3,0,bodyLength*.5,bodyLength*.25);
       }
    // both
    else {    
         ellipse(-bodyLength*.3,0,bodyLength*.5,bodyLength*.25);
         ellipse(bodyLength*.3,0,bodyLength*.5,bodyLength*.25);
       }
  popMatrix();
  }
  
  void drawWalkFeet(int indicator){
    pushMatrix();
      translate(0,headR*.4);
      fill(255);
      stroke(50);
      strokeWeight(magn);
      //right
      if (indicator == 1){
        ellipse(bodyLength*.4,-bodyLength*.25,bodyLength*.5,bodyLength*.5);
      }
      //left
      else if (indicator == -1){
        ellipse(-bodyLength*.4,-bodyLength*.25,bodyLength*.5,bodyLength*.5);
      }
      //None
      else{
      }
    
    popMatrix();
    
  }

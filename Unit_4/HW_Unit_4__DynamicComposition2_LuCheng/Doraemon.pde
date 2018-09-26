void drawDoraemon(){
  headR = magn * 100;
  faceR = headR *.8;
  
  if (area==0)
  {
    if (mouseAction == 0){
      initPositionX = headR+mX;
      initPositionY = headR+mY;
    }
    else if (mouseAction == 1){
      initPositionX = headR+mouseX;
      initPositionY = headR+mouseY;
    }
  }
  else if (area == 1)
  {
    if (mouseAction == 0){
    }
    else if (mouseAction == 1){
      initPositionX = mouseX;
      initPositionY = mouseY;
    }
  }
  
  else if (area == 2)
  {
    if (mouseAction == 0){
      initPositionX = mX-headR;
      initPositionY = headR+mY;
    }
    else if (mouseAction == 1){
      initPositionX = mouseX-headR;
      initPositionY = mouseY+headR;
    }
  }
  pushMatrix();
  if (mouseAction == 1){
  rotate(doraemonAngle);
  doraemonAngle+=0.1;   
  } 
    drawHead();
    drawBody();
  popMatrix();
    
}

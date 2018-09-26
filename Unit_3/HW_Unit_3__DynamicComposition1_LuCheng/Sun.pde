void drawSun(){
  int xSun = width/2, ySun = 0;
strokeWeight(5);
pushMatrix();
translate(xSun,ySun);
  for (int i=0;i<200; i++){
  stroke(255,i,0,200);
  rotate(sunAngle);
  line(0,0,0,160);
  stroke(255,255-i,0,200);
  line(0,0,0,120);
  }
  noStroke();
  fill(240,240,0);
  ellipse(0,0,180,180);
popMatrix();
}

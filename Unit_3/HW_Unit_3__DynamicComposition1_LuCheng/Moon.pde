void drawMoon(){
  int xMoon = - width/2, yMoon = 0;
  noStroke();
  fill(255, 50);
  ellipse(xMoon, yMoon, 220,220);
  fill(239, 243, 249);
  ellipse(xMoon, yMoon, 180,180);
  pushMatrix();
    fill(39, 39, 40, 50);
    translate(earthShade,0);
    ellipse(xMoon, yMoon, 180,180);
    earthShade = earthShade + 10;
    if (earthShade > 180){earthShade = -180;}
  popMatrix();
}

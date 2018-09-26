void drawShadow(){
  xShadow = xShadow + width/(interval*(timeslotType)/2);
  if (xShadow >= width){xShadow = 0;}
  if (timeslot < 4) {fill(255,200,0,80);} else {fill(250, 100);}
  ellipse(xShadow,height*19/24+50,random(180,250),random(60,90));
  ellipse(xShadow+20,height*19/24,random(140,200),random(40,80));
  ellipse(xShadow+20,height*19/24+100,random(120,200),random(60,80));
}

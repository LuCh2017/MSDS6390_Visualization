void setup(){
  
  size(1600,1000);
  background(255);
  
  //house demensions
  float houseWidth = width * .8;
  float houseHeight = height * .6;
  
  float deltaWidth = width - houseWidth;
  float deltaHeight = height - houseHeight;
  
  // roof points
  float x0 = deltaWidth/2, y0 = deltaHeight;
  float x1 = width/2, y1 = 0;
  float x2 = deltaWidth/2 + houseWidth, y2 = deltaHeight;
  
  float doorWidth = houseWidth * .2;
  float doorHeight = houseHeight * .5;
  
  //ellipse(x0,y0,10,10);
  //ellipse(x1,y1,10,10);
  //ellipse(x2,y2,10,10);
  
  //draw base
  strokeWeight(5);
  //noStroke();
  fill(100,50,20);
  rect(x0,y0,houseWidth, houseHeight);
  
  //draw roof
  fill(40,10,40);
  triangle(x0,y0,x1,y1,x2,y2);
  
  //draw door
  fill(180,5,7);
  rect(width/2 - doorWidth/2, height - doorHeight, doorWidth, doorHeight);
  line(width/2,height - doorHeight,width/2, height );
  ellipse(width/2 - 15, height - doorHeight/2, 10,10);
  ellipse(width/2 + 15, height - doorHeight/2, 10,10);
}

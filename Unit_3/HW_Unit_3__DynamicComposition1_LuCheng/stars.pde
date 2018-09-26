void drawStars(){
  fill(180);
  noStroke();
  for (int i = 0; i<stars; i++){
    ellipse(xStars[i],yStars[i],rStars[i],rStars[i]);
  }
  
  //twinkling
  int spark = int(random(5,50)); 
  int index;
  fill(255);
  for(int i = 0; i< spark; i++){
    index = int(random(stars));
    ellipse(xStars[index],yStars[index],rStars[index]+5,rStars[index]+5);
  }
     
}

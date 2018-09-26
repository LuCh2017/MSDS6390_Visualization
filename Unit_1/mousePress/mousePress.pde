void setup(){
size(1600, 1600);  
background(192, 64, 0);
stroke(255);
line(150, 25, 270, 350);
}

void draw(){
  if(mousePressed){
    fill(0);
  } else {
    stroke(40);
    fill(255);
  }
  ellipse(mouseX,mouseY,80,80);
  line(0,0,mouseX,mouseY);
}

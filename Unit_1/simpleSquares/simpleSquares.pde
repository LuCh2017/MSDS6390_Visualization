void setup() {
  size(600,600);
  background(200,100,0);
  for(int i=0;i<50;i++){
    fill(random(255),random(255),random(255));
    rect(random(500),random(500),random(100),100);
  }
}

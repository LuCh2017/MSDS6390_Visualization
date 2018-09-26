void setup(){
  size(1600,1600);
  background(154);
}

void draw(){
//Parallelogram 1
line (90,50,50,50);
line (75,75,90,50);
line (75,75,35,75);
line (35,75,50,50);

//Parallelogram 2
fill(255);
stroke(200,125,200);
quad(100, 100, 300, 700, 800, 700 ,600, 100);

// quadrilateral
fill(30);
quad(438, 431, 486, 420, 469, 463, 430, 476);

//triangle
fill(150,50,200);
stroke(200,125,200);
triangle(130, 175, 158, 120, 186, 175);


}

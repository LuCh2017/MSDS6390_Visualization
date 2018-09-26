void setup(){
// setup the background of the image
//
size(1450, 1700);
color background = color(224,224,196);
background(background);
noStroke();
//background(225,225,180);
}

void draw(){
// black circle
//translate(620,400);
fill(0);
ellipse(620,400,560,560);
resetMatrix();

// dark green rectangle
//set rotate radian
//use color selector.
translate(800,830);
color darkgreen = color(3,21,9);
fill(darkgreen);
rotate(6.18);
//rotate(radians(300));
rect(0, 0, 400, 700);
resetMatrix();

// orange rectangle
//translate(680,720);
translate(680,710);
color orange = color(237,139,4);
fill(orange);
rotate(6.25);
rect(0, 0, 210, 320);
resetMatrix();

// vertical dark blue rectangle
translate(960,560);
color purpleblue = color(49,47,86);
fill(purpleblue);
rotate(6.17);
rect(0, 0, 100, 460);
resetMatrix();

// vertical long big red rectangle
translate(520,95);
//color red = color(#EA130C);
//color red = color(#DB1D16);
color red = color(220,0,0);
fill(red);
rotate(0.12);
rect(0, 0, 70, 1520);
resetMatrix();

// horizontal short red stick rectangle
translate(300,360);
fill(red);
rotate(4.8);
rect(0, 0, 35, 540);
resetMatrix();

// vertical short red rectangle
translate(750,55);
fill(red);
rotate(0.005);
rect(0, 0, 30, 800);
resetMatrix();

// horizontal black rectangle
translate(160,1288);
fill(0);
rotate(4.6);
rect(0, 0, 38, 1200);
resetMatrix();

// 4 small blue rectangles from top to bottom:
// 1.light blue
translate(790,1460);
color lightblue = color(65,112,130);
fill(lightblue);
rotate(4.52);
rect(0, 0, 29, 160);
resetMatrix();

// 2.ocean blue
translate(970,1500);
color oceanblue = color(30,82,132);
fill(oceanblue);
rotate(4.6);
rect(0, 0, 29, 260);
resetMatrix();

// 3.dark blue
translate(760,1577);
color darkblue = color(7,40,85);
fill(darkblue);
rotate(4.6);
rect(0, 0, 35, 360);
resetMatrix();

// 4.sky blue
translate(1040,1620);
color skyblue = color(76,104,128);
fill(skyblue);
rotate(4.35);
rect(0, 0, 35, 140);
resetMatrix();
}

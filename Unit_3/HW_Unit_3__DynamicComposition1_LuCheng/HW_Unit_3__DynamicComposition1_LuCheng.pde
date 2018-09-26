//sin line variables
float[] yvalues;
int w;
int xspacing = 6;
float period = 500;  // How many pixels before the wave repeats
float dx;
float waveStartAngle = 0;
float waveStartAngle2 = PI/2;
float deltaAngle = 0.02;

color skyDawn = color(203, 218, 242);
color skyMorning = color(117, 164, 239);
color skyNoon = color(48, 124, 244);
color skyAfternoon = color(162, 168, 239);
color skyEvening = color(192, 133, 234);
color skyNight = color(70, 61, 76);
color skyMidnight = color(0);
color[] skyColor = {skyDawn,skyMorning,skyNoon,skyAfternoon,skyEvening,skyNight,skyMidnight,skyNight};

int timeslot = 0;
int timeslotType = skyColor.length;
int interval = 20;
int count = 1;

float sunAngle = PI;
float sunDeltaAngle = 2*PI/timeslotType/interval; // sun rotate angle
int sunRay = 0;

float earthShade = -180;
int earthShadeFlag = 1;

// stars coordinate
int stars = 200;
float[] xStars = new float[stars];
float[] yStars = new float[stars];
float[] rStars = new float[stars];
float xSpark, ySpark,rSpark;

float xShadow = 0;

void setup()
{
  size(2000,2000);
  w = width+16;
  yvalues = new float[w/xspacing];
  dx = (TWO_PI / period) * xspacing;
  
  for(int i = 0; i<stars; i++){
  xStars[i] = random(1,width);
  }
  for(int i = 0; i<stars; i++){
  yStars[i] = random(1,height*5/6);
  }
  for(int i = 0; i<stars; i++){
  rStars[i] = random(1,10);
  }
}

void draw()
{ 
 //Sky Change
 background(skyColor[timeslot]);
 count = count +1;
 println(timeslot);
 if (count==interval){timeslot =timeslot+1;count = 0;}
 if (timeslot > skyColor.length - 1){timeslot = 0;}
 //Star
 if (timeslot > 4) {drawStars();}
 

 
 //Sun Moon Rotate
 sunAngle += sunDeltaAngle ;
 if (sunAngle < -PI){sunAngle = PI;}
 
 pushMatrix();
      translate(width/2, height*3/4);
      rotate(sunAngle);
      drawSun();
      drawMoon();
 popMatrix();
 
 for (int i=1;i<=5;i++){
   //fill(0,0,255,100);
   //calcWave(float waveHeight)
   calcWave(i*10);
   //renderWave(float heightR)
   renderWave(1);
   //fill(0,80,255,100);
   //calcWave2(i*10);
   //renderWave(1);
   calcWave3(i*10);
   renderWave(1);
 }
 
 drawShadow();
  
}

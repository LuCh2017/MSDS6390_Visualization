void calcWave(float waveHeight) {
  // Increment theta (try different values for 'angular velocity' here
    waveStartAngle += deltaAngle;
  // For every x value, calculate a y value with sine function
  float x = waveStartAngle;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*waveHeight;
    x+=dx;
  }
}

void calcWave2(float waveHeight) {
  // Increment theta (try different values for 'angular velocity' here
    waveStartAngle2 += deltaAngle;
  // For every x value, calculate a y value with sine function
  float x = waveStartAngle2;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*waveHeight;
    x+=dx;
  }
}

void calcWave3(float waveHeight) {
  // Increment theta (try different values for 'angular velocity' here
    waveStartAngle2 -= deltaAngle;
  // For every x value, calculate a y value with sine function
  float x = waveStartAngle2;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*waveHeight;
    x+=dx;
  }
}

void renderWave(float heightR) {
  noStroke();
  //fill(0,0,255);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) {
   if (timeslot < 4){
   fill(0,x,255);
   }
   else if (timeslot == 4){
   fill(180,255-x,180);
   }
   else {
     fill(180,180,x);
   }
   for (int j = 0; j < 12; j++){
   ellipse(x*xspacing, (height*3/4+j*50+yvalues[x])*heightR, xspacing, xspacing);
   }
  }
}

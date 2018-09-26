 //arms
 void drawArms(){
   //if ((armAngle>.4) | (armAngle<0)){ armSpeed = armSpeed *-1;}
   //println(armAngle);
   
   if (((armAngle>.4) & (armSpeed>0))|((armAngle<0)&(armSpeed<0))){ armSpeed = armSpeed *-1;}
   
   armAngle += armSpeed;
   
   if ((waveAngle>-1) | (waveAngle<-1.40)){ waveSpeed = waveSpeed *-1;}
   waveAngle += waveSpeed;
   //println(waveAngle);
   
 //Left Arm
 pushMatrix();
   translate(-bodyWidth/3, -bodyLength*2/5);
   rotate(armAngle);   
   fill(0, 168, 213);
   stroke(50);
   strokeWeight(magn);
    
   beginShape();
     vertex(0,0);
     vertex(-bodyWidth/2,bodyLength/4);
     vertex(-bodyWidth/2.4,bodyLength*2/5);
     vertex(bodyWidth*.4,bodyLength/6);
   endShape(CLOSE);
   
   fill(255);
   ellipse(-bodyWidth/2.2,bodyLength*.3,bodyLength/3,bodyLength/3);
   
    
 popMatrix();
 
 //Right Arm;
 pushMatrix();
   translate(bodyWidth/3, -bodyLength*2/5);
   rotate(waveAngle);
   fill(0, 168, 213);
   stroke(50);
   strokeWeight(magn);
    
   beginShape();
     vertex(0,0);
     vertex(bodyWidth/2,bodyLength/4);
     vertex(bodyWidth/2.4,bodyLength*2/5);
     vertex(-bodyWidth*.4,bodyLength/6);
   endShape(CLOSE);
   
   fill(255);
   ellipse(bodyWidth/2.2,bodyLength*.3,bodyLength/3,bodyLength/3); 
 popMatrix();
 
 }

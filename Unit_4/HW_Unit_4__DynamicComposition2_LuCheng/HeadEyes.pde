void drawEyes(int indicator){

    pushMatrix();
      stroke(50);
      strokeWeight(magn);
      fill(255);
      //eyes
        ellipse(-headR/8,-headR/4, headR/4, headR/3.5);
        ellipse(headR/8,-headR/4, headR/4, headR/3.5);
        
        
      if (indicator==1){         
        //pupils
        fill(0);
        strokeWeight(1);
        ellipse(-headR/16,-headR/4, headR/16, headR/11);
        ellipse(headR/16,-headR/4, headR/16, headR/11);
        //sparkle in pupils
        fill(200);
        stroke(50);
        ellipse(-headR/16,-headR/4, headR/38, headR/38);
        ellipse(headR/16,-headR/4, headR/38, headR/38);
      }
      else if (indicator==-1){
      }
      // dizzy eyes
      else if (indicator == 2){
        stroke(50);
        strokeWeight(magn);
         line(-headR/16,-headR/4,-headR/7,-headR/6);
         line(-headR/16,-headR/4,-headR/7,-headR/4);
         line(-headR/16,-headR/4,-headR/7,-headR/3);
         
         line(headR/16,-headR/4,headR/7,-headR/6);
         line(headR/16,-headR/4,headR/7,-headR/4);
         line(headR/16,-headR/4,headR/7,-headR/3);
        
      }
    popMatrix();  
}

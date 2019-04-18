// variables to save mouse coordinates
int lastX;
int lastY;


void setup(){
  size(500,500);
  background(255);
  
  // change line width/weight
  strokeWeight(10);
}


void draw(){    
  
  // change color before painting
  if(keyPressed && key == 'b'){   
    stroke(0,0,255);
  }else{
    stroke(0,255,0);
  }
  
  // drawing line between last and new mouse positions
  if(mousePressed){
    line(lastX,lastY,mouseX,mouseY); 
  }
      
  // clear window 
  if(keyPressed && key == ' '){
      background(255);
  } 

  // save current mouse coordinates for the next frame
  lastX = mouseX;
  lastY = mouseY;
}

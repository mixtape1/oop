int gridSizeX;
int gridSizeY;
int cellSize=50;

int grid[][];

color red = color(120, 152, 120);
color green = color(0, 255, 0);
color white = color(255, 255, 255);
color black = color(0, 0, 0);

  float avgValue;

int prevX;
int prevY;


void setup(){

  size(700,500);
  background(255);
  frameRate(10);
  gridSizeX = width/cellSize;
  gridSizeY = height/cellSize;
  
  
  grid = new int[gridSizeX][gridSizeY];
  
  for(int i=0; i<gridSizeX;i++){
    for(int j=0; j<gridSizeY;j++){
         grid[i][j]=255;
    }
  }
}

void lines(int x, int y){
           
  //grid[x][y] = 150;
   
          if(prevX == x ){ //jei x tas pats
            if(y > prevY)
            {
              for(; prevY <=y; prevY++)
              {
                  grid[x][prevY] = 150;        
              }
            }else if(y < prevY){
              for(; prevY >=y; prevY--)
              {
                  grid[x][prevY] = 150;
              
              }

            }                         
          }else if (prevY == y ){//jei y tas pats
              if(x > prevX)
            {
              for(; prevX <=x; prevX++)
              {
                  grid[prevX][y] = 150;        
              }
            }else if(x < prevX){
              for(; prevX >=x; prevX--)
              {
                  grid[prevX][y] = 150;
              
              }

            }
        
          }else{//jei istrizi
              if(x > prevX && y >prevY)
            {
              for(; prevX <=x; prevX++)
              {
                  grid[x][x] = 150;        
              }
            } else if(x < prevX)
            {
              for(; prevX >=x; prevX--)
              {
                  grid[x][x] = 150;
              
              }
          }
          }
          prevX=mouseX/cellSize;
          prevY=mouseY/cellSize;
}



void draw(){
  

  for(int i=0; i < gridSizeX; i++){
    for(int j=0;j<gridSizeY;j++){
      fill(grid[i][j]);
      rect(i*cellSize,j*cellSize, cellSize,cellSize);
      
    }
  }
  
  if(mousePressed){

    //System.out.println(white);
    //System.out.println(black);
    int x = mouseX/cellSize;
    int y = mouseY/cellSize;
    
    
    
    if(mouseX < 0 || mouseX >=width || mouseY < 0|| mouseY >=height){

    }else{
      //System.out.println("naujas"+x);
      lines(x,y);
      if(keyPressed && key=='b'){
          grid[x][y] = 155;
       }else if(keyPressed && key=='c'){
         grid[x][y] = red;
       }else if(keyPressed && key=='d'){       
         grid[x][y] = green;
       }
    }
}


  if(keyPressed && key=='a'){
     for (int i=0; i<gridSizeX; i++){
        for(int j=0; j<gridSizeY; j++){
          if(grid[i][j] <255){
            avgValue = (red(grid[i][j])+ green(grid[i][j]) +blue(grid[i][j]))/3;
          grid[i][j]=(int)avgValue;
          }
        }
    }
    
  }
    if(keyPressed && key == ' '){
      
           for (int i=0; i<gridSizeX; i++){
        for(int j=0; j<gridSizeY; j++){
          if(grid[i][j] <255){
       
          grid[i][j]=255;
          }
        }
        
        background(255);
    }
  }
}

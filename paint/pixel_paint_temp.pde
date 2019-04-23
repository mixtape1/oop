int gridSizeX;
int gridSizeY;
// size of pixels/squares (how many times picture is zoomed)
int cellSize = 20;

// image to paint is represented as 2D array

int[][] grid,d;
int r,g,b;

boolean[] keyClicks;

void setup(){
  println(CONTROL);
  size(700,500);
  background(255);

  // as screen size can change, compute how many squares can screen hold
  gridSizeX = width/cellSize;
  gridSizeY = height/cellSize;
  
  // create 2D array which will hold our square/pixel grid
  keyClicks = new boolean[255];
  grid = new int[gridSizeX][gridSizeY];
  
  // at start make every square in the 2D array white
  clearGrid();
  
  // you can paint individual pixels by setting array's [x][y] coordinates
  //grid[2][2] = 50;
  
}

void draw(){
  // each frame draw every pixel in the image as square
  for(int i = 0;i < gridSizeX;i++){
    for(int j = 0;j < gridSizeY;j++){
      // fill function gets color value of individual pixel/square in the array
      fill(grid[i][j]);
      
      rect(i*cellSize,j*cellSize,cellSize,cellSize);
    }
  }
  
  // convert mouse x,y coordinates to the 2D array coordinates
  if(mousePressed){
     setPixel(mouseX,mouseY); // 0 is black color
  }
  
  if(keyClicks['x'] && keyClicks[' ']){
    clearGrid();
  }
  
  if(keyClicks['1']){
    r+=5;
  }
  if(keyClicks['2']){
    r-=5; 
  }
  
  if(keyClicks['3']){
    g+=5;
  }
  if(keyClicks['4']){
    g-=5; 
  }
  
  if(keyClicks['5']){
    b+=5;
  }
  if(keyClicks['6']){
    b-=5; 
  }
  
}

void keyPressed(){
  keyClicks[key] = true;
}

void keyReleased(){
  keyClicks[key] = false;
}

void clearGrid(){
  for(int i = 0;i < gridSizeX;i++){
    for(int j = 0;j < gridSizeY;j++){
      grid[i][j] = 255;  // 255 is white color 
    }
  } 
}

void setPixel(int x,int y){
  if(x < 0 || x >= width)return;
  if(y < 0 || y >= height)return;
  
  int mouseGridX = x/cellSize;
  int mouseGridY = y/cellSize;
  grid[mouseGridX][mouseGridY] = color(r,g,b);  // 0 is black color
}

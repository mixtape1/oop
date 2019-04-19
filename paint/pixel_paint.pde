int gridSizeX;
int gridSizeY;
// size of pixels/squares (how many times picture is zoomed)
int cellSize = 20;

// image to paint is represented as 2D array
int grid[][];

void setup(){
  size(700,500);
  background(255);

  // as screen size can change, compute how many squares can screen hold
  gridSizeX = width/cellSize;
  gridSizeY = height/cellSize;
  
  // create 2D array which will hold our square/pixel grid
  grid = new int[gridSizeX][gridSizeY];
  
  // at start make every square in the 2D array white
  for(int i = 0;i < gridSizeX;i++){
    for(int j = 0;j < gridSizeY;j++){
      grid[i][j] = 255;  // 255 is white color 
    }
  } 
  
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
     int mouseGridX = mouseX/cellSize;
     int mouseGridY = mouseY/cellSize;
     grid[mouseGridX][mouseGridY] = 0;  // 0 is black color
  }
}

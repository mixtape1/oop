int gridSizeX;
int gridSizeY;
int cellSize=46;

int grid[][];
//2 PUNKTAS. ivedam naujus masyvus visom spalvom (rgb);
int gridr[][];
int gridg[][];
int gridb[][];

void setup(){
  
  size(700,500);
  //strokeWeight(2);
  background(255);  

  //background(255);  
  //point(0,0); 
  
  gridSizeX= width/cellSize;
  gridSizeY= height/cellSize;
  
  //2 PUNKTAS. Priskiriam nauju spalvu masyvus;
  gridr = new int[gridSizeX][gridSizeY];
  gridg = new int[gridSizeX][gridSizeY];
  gridb = new int[gridSizeX][gridSizeY];

  
  for(int i=0; i<gridSizeX; i++){
    for(int j=0; j< gridSizeY;j++){
   //2 PUNKTAS. kiekvienai spalvai priskiriam pradine spalva
      gridr[i][j] = 255;
      gridg[i][j] = 255;
      gridb[i][j] = 255;
    }
  
    //grid[i][0] = 255;//priskiriam visiem elementam spalva (pagal reiksme)
  }
  
    //grid[2]=50; //keicia noktretaus pikselio spalva
  
} 

//void square(int x, int y, int s){
//  rect(x,y,s,s);
//  //cia jei nori pasidaryti funkcija kvadratui (maziau kintamuju);
//}


void draw(){ 
 for(int i=0; i<gridSizeX; i++){
  for(int j=0; j< gridSizeY;j++){
   fill( gridr[i][j],gridg[i][j],gridb[i][j]);
   rect(i*cellSize, j*cellSize,cellSize,cellSize);
  }
 }
    
     //rect(i*50,height/2,50,50);
    //for(int j=0; j<gridSizeY; j++){
      //if(i == 2 && j == 2){
      //  fill(255,0,0);
      //}else{
      //  fill(255);        
      //}
      
      //rect(i*cellSize, j*cellSize,cellSize,cellSize);
     if(mousePressed){
      int mouseGridX = mouseX/cellSize;
      int mouseGridY = mouseY/cellSize;
      
      //1 PUNKTAS. daromas patikrinimas ar neuzeina uz ribu:
      if (mouseX <= gridSizeX*cellSize && mouseY <= gridSizeY*cellSize && mouseX >= 0 && mouseY > 0){
        //2 PUNKTAS.Priskiriam norimas spalvas po paspaudimo
      gridr[mouseGridX][mouseGridY] = 255;
      gridg[mouseGridX][mouseGridY] = 0;
      gridb[mouseGridX][mouseGridY] = 0;
      } else{
        print("Pelyte paspausta uz lauko ribu");
      }
    }
 }


//

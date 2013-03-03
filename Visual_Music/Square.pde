public class BrushStroke {
  String squareColor; 
  int startX; 
  int startY; 
  int r, g, b;
    
  public BrushStroke(String c, int x, int y) {
    squareColor = c;
    startX = x; 
    startY = y; 
    r = 0; 
    g = 0; 
    b = 0; 
  } 
  
  String getSquareColor() {
    return squareColor; 
  }
  
  void setRGB(int _r, int _g, int _b) {
    r = _r; 
    g = _g; 
    b = _b; 
  } 
 
  
  void setSquareColor(String c) {
    squareColor = c; 
  }
  
  int getStartX() {
    return startX; 
  } 
  
  void setStartX(int x) {
    startX = x; 
  } 
  
  int getStartY() {
    return startY; 
  } 
  
  void setStartY(int y) {
    startY = y; 
  } 
  
  void render() {
     
    if(squareColor.equals("pink")) 
    { 
      Shader shade = new Shader(startX, startY, 1); 
      strokeWeight(3); 
      noFill(); 
      int count = 0; 
      stroke(198, 46, 95); 
      while(count != 3) 
      { 
        bezier(startX, startY, startX - 5, startY + 15, startX - 5, startY + 20, startX - 10, startY + 20);
        startX += 3; 
        startY += 2; 
        count++; 
      } 
       
      while(count != 6) 
      { 
        bezier(startX, startY, startX - 5, startY + 15, startX - 5, startY + 20, startX - 10, startY + 20);
        startX += 3; 
        startY += 1; 
        count++;
      }  
      
      shade.render(); 
           
    } // end of if statement for "pink" 
    else if (squareColor.equals("simple blue"))
    {
      stroke(r, g, b); 
      int count = 0; 
      strokeWeight(3); 
      noFill(); 
      while(count != 7) 
      { 
        bezier(startX, startY, startX - 5, startY + 15, startX, startY + 5, startX - 10, startY + 20);
        startX += 3; 
        startY += 2; 
        count++; 
      } 
       
    }//end of if statement for simple blue 
    else 
    { 
      println("shouldn't be here"); 
    }
 }// end of render method
  
  
      
}// end of Square class 
   

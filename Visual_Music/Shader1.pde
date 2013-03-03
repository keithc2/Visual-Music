public class Shader {
  int startX; 
  int startY; 
  int shader; 
  
  public Shader(int x, int y, int s) {
    startX = x; 
    startY = y; 
    shader = s; 
  } 
  
  public void render() {
    if(shader == 1) 
    { 
      stroke(255, 50);
      bezier(startX, startY, startX - 5, startY + 15, startX - 5, startY + 20, startX - 10, startY + 20); 
      startX += 9; 
      startY += 6;
      stroke(255, 85);
      bezier(startX, startY, startX - 5, startY + 15, startX - 5, startY + 20, startX - 10, startY + 20); 
      startX += 3; 
      startY += 1;
      stroke(255, 85 );
      bezier(startX, startY, startX - 5, startY + 15, startX - 5, startY + 20, startX - 10, startY + 20); 
      
    }    

  } 
    
} 

public class BrushStroke {
  int startX; 
  int startY; 
  color color1; 
  color color2; 
  int bezierType; 
  int steps; 
  int weight; 
  
  public BrushStroke(int x, int y, int c1, int c2, int b, int s, int w) {
    startX = x; 
    startY = y; 
    color1 = c1; 
    color2 = c2; 
    bezierType = b; 
    steps = s; 
    weight = w;
  } 
  
  
} 

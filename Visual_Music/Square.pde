public class Renderer {
  BrushStroke brushStroke; 
  float startX; 
  float startY;
  int i; 
  float degree;
  float startPointX;
  float startPointY;
  int startTime = millis(); 
  
  public Renderer(BrushStroke b) 
  {
    brushStroke = b; 
    startX = b.startX; 
    startY = b.startY;
    i = 0; 
    degree = 0.0; 
    startPointX = brushStroke.startX;
    startPointY = brushStroke.startY; 
    
  }
  
  public boolean render() {
    
    strokeWeight(brushStroke.weight); 
    noFill(); 
    
    int steps = brushStroke.steps;
    float framesToAnimate = 5;
    float endPointX = 0.0; 
    float endPointY = 0.0; 
         
    float t = i / float(steps);
    if(brushStroke.bezierType == 1)
    { 
      endPointX = bezierPoint(startX, startX, startX - 5, startX - 10, t);
      endPointY = bezierPoint(startY,  startY + 15, startY + 5, startY + 20, t);
    } 
    else if (brushStroke.bezierType == 2) 
    { 
      endPointX = bezierPoint(startX, startX + 1, startX, startX - 2, t); 
      endPointY = bezierPoint(startY, startY + 15, startY + 5, startY + 15, t); 
    } 
    else if (brushStroke.bezierType == 3) 
    { 
      endPointX = bezierPoint(startX, startX - 4 , startX - 7, startX - 10, t); 
      endPointY = bezierPoint(startY, startY + 1, startY + 2, startY + 4, t); 
    } 
    
    float lineLengthX = endPointX - startPointX;
    float lineLengthY = endPointY - startPointY;
    
    if(millis() > startTime && i <= steps)
    {
        color c1 = brushStroke.color1; 
        color c2 = brushStroke.color2;
        degree += 0.05; 
        if(degree <= 1.0 && degree >= 0.0) {
          color c3 = lerpColor(c1, c2, degree); 
          stroke(c3);
        }
        else {
          
          degree = 0.0; 
          color c3 = lerpColor(c1, c2, degree); 
          stroke(c3); 
        } 
            
        line(startPointX, startPointY, startPointX + (float)(frameCount % framesToAnimate)/framesToAnimate*lineLengthX, startPointY + (float)(frameCount % framesToAnimate)/framesToAnimate*lineLengthY );
        startTime += 0.5; 
        i++;     
        startPointX = endPointX; 
        startPointY = endPointY; 
         
       } 
       
       if(i == steps)
       {
         i = 0;
         degree = 0.0;
         return true; 
       } 
       else
       {
         return false;
       }
        
    }
    
    public void setBrushStroke(BrushStroke b) {
      brushStroke = b; 
      startX = b.startX; 
      startY = b.startY;
      i = 0; 
      degree = 0.0; 
      startPointX = brushStroke.startX;
      startPointY = brushStroke.startY;
    }
  
}

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
    else if (brushStroke.bezierType == 4) //Eiffel tower curve left 
    { 
      endPointX = bezierPoint(startX, startX + 5 , startX + 5, startX - 114, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 5) //Eiffel tower curve lefter
    { 
      endPointX = bezierPoint(startX, startX + 5 , startX + 5, startX - 134, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 6) //Eiffel tower curve middle left
    { 
      endPointX = bezierPoint(startX, startX + 5, startX + 5, startX - 124, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 7) //Eiffel tower curve right of right 
    { 
      endPointX = bezierPoint(startX, startX + 5, startX + 5, startX - 104, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 8) //Eiffel tower curve right 
    { 
      endPointX = bezierPoint(startX, startX - 5, startX - 5, startX + 114, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 9) //Eiffel tower curve righter
    { 
      endPointX = bezierPoint(startX, startX - 5, startX - 5, startX + 134, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 10) //Eiffel tower curve middle right
    { 
      endPointX = bezierPoint(startX, startX - 5, startX - 5, startX + 124, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 11) //Eiffel tower curve right of right 
    { 
      endPointX = bezierPoint(startX, startX - 5, startX - 5, startX + 104, t); 
      endPointY = bezierPoint(startY, startY + 150, startY + 300, startY + 490, t);
    } 
    else if (brushStroke.bezierType == 12) //Eiffel tower curve bottom
    { 
      endPointX = bezierPoint(startX, startX + 50 , startX + 125, startX + 175, t); 
      endPointY = bezierPoint(startY, startY - 75, startY - 75, startY, t);
    } 
    else if (brushStroke.bezierType == 13) //Eiffel tower lines top
    { 
      endPointX = bezierPoint(startX, startX + 23 , startX + 46, startX + 78, t); 
      endPointY = bezierPoint(startY, startY, startY, startY, t);
    } 
    else if (brushStroke.bezierType == 14) //Eiffel tower line bottom 
    { 
      endPointX = bezierPoint(startX, startX + 50 , startX + 100, startX + 150, t); 
      endPointY = bezierPoint(startY, startY, startY, startY, t);
    } 
    else if (brushStroke.bezierType == 9) //short line brush strokes  
    { 
      endPointX = bezierPoint(startX, startX - 4 , startX - 7, startX - 10, t); 
      endPointY = bezierPoint(startY, startY + 1, startY + 2, startY + 4, t);
    } 
    else if (brushStroke.bezierType == 10) //lamp strokes 
    { 
      endPointX = bezierPoint(startX, startX - 4 , startX - 7, startX - 10, t); 
      endPointY = bezierPoint(startY, startY + 1, startY + 2, startY + 4, t);
    } 
    else if (brushStroke.bezierType == 11) //vertical lines for lamp post  
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

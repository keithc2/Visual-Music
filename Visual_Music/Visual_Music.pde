import ddf.minim.*;

Minim minim;
AudioPlayer a1;

int startTime = millis();
int i = 0; 
float startX = 85; 
float startY = 20;

void setup() {
  size(479,665);
  background(0); 
  smooth();
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3"); 
}

void stop() {
   a1.close(); 
   minim.stop() ;
   super.stop() ;
}
 

void draw(){
   //pink square at 310, 192
   BrushStroke s1 = new BrushStroke("pink", 310, 192); 
   s1.render(); 
   
   //simple blue square at 122, 286
   s1.setRGB(22, 110, 170); 
   s1.setSquareColor("simple blue"); 
   s1.setStartX(122); 
   s1.setStartY(286); 
   s1.render(); 
   
   //simple blue square at 354, 53
   s1.setRGB(2, 102, 125); 
   s1.setSquareColor("simple blue"); 
   s1.setStartX(353); 
   s1.setStartY(54); 
   s1.render();
   
   //simple blue square at 387, 51
   s1.setRGB(16, 6, 76); 
   s1.setSquareColor("simple blue"); 
   s1.setStartX(387); 
   s1.setStartY(51); 
   s1.render();

   
  
   
   //pink square at 338, 159
   s1.setSquareColor("pink"); 
   s1.setStartX(338); 
   s1.setStartY(159); 
   s1.render(); 
   
   //pink square at 77, 212
   s1.setSquareColor("pink"); 
   s1.setStartX(77); 
   s1.setStartY(212); 
   s1.render(); 
   
   //pink square at 40, 232
   s1.setSquareColor("pink"); 
   s1.setStartX(40); 
   s1.setStartY(159); 
   s1.render(); 
   
   //pink square at 175, 192
   s1.setSquareColor("pink"); 
   s1.setStartX(175); 
   s1.setStartY(192); 
   s1.render();
  
   //pink square at 203, 181
   s1.setSquareColor("pink"); 
   s1.setStartX(203); 
   s1.setStartY(181); 
   s1.render(); 
   
   //pink square at 187, 160
   s1.setSquareColor("pink"); 
   s1.setStartX(187); 
   s1.setStartY(160); 
   s1.render(); 
   
   //pink square at 154, 221
   s1.setSquareColor("pink"); 
   s1.setStartX(154); 
   s1.setStartY(221); 
   s1.render();
   
   //pink square at 188, 229
   s1.setSquareColor("pink"); 
   s1.setStartX(188); 
   s1.setStartY(229); 
   s1.render();
   
   //pink square at 202, 265
   s1.setSquareColor("pink"); 
   s1.setStartX(202); 
   s1.setStartY(265); 
   s1.render();  
   
   //pink square at 137, 285
   s1.setSquareColor("pink"); 
   s1.setStartX(137); 
   s1.setStartY(285); 
   s1.render(); 
   
   //pink square at 163, 310
   s1.setSquareColor("pink"); 
   s1.setStartX(163); 
   s1.setStartY(310); 
   s1.render(); 
   
   //pink square at 195, 307
   s1.setSquareColor("pink"); 
   s1.setStartX(195); 
   s1.setStartY(307); 
   s1.render(); 
   
   //pink square at 98, 339
   s1.setSquareColor("pink"); 
   s1.setStartX(98); 
   s1.setStartY(339); 
   s1.render(); 
 
   //pink square at 161, 373
   s1.setSquareColor("pink"); 
   s1.setStartX(161); 
   s1.setStartY(373); 
   s1.render(); 
  
   //pink square at 160, 407
   s1.setSquareColor("pink"); 
   s1.setStartX(160); 
   s1.setStartY(407); 
   s1.render(); 
   
   //pink square at 17, 440
   s1.setSquareColor("pink"); 
   s1.setStartX(17); 
   s1.setStartY(440); 
   s1.render(); 
   
   //pink square at 377, 109
   s1.setSquareColor("pink"); 
   s1.setStartX(377); 
   s1.setStartY(105); 
   s1.render(); 
   
   //pink square at 279, 196
   s1.setSquareColor("pink"); 
   s1.setStartX(279); 
   s1.setStartY(196); 
   s1.render(); 
  
   //pink square at 275, 248
   s1.setSquareColor("pink"); 
   s1.setStartX(275); 
   s1.setStartY(248); 
   s1.render(); 
   
   
   
   
   
   /*
   ANIMATION CODE 
   
   a1.play();
   noFill();
   fill(255);
   int steps = 1000;
 
   float framesToAnimate = 5;
 
   float t = i / float(steps);
   float endX = bezierPoint(85, 10, 90, 15, t);
   float endY = bezierPoint(20, 10, 90, 80, t);
   float lineLengthX = endX - startX;
   float lineLengthY = endY - startY;
   if(millis() > startTime && i <= steps)
   {
       line(startX, startY, startX+ (float)(frameCount % framesToAnimate)/framesToAnimate*lineLengthX, startY + (float)(frameCount % framesToAnimate)/framesToAnimate*lineLengthY );
       startTime += 5; 
       i++;     
       startX = endX; 
       startY = endY; 
    }
    float x = 50;
    float y = 50;
    float lineLength = 400;
    line(x, y, x + (float)(frameCount % framesToAnimate)/framesToAnimate*lineLength, y);
     
    float x = 50;
    float y = 50;                              //set the multiplier to adjust speed
    line(x,y,x+(millis()-initialTime)*0.01, y+(millis()-initialTime)*0.01);           //10 px/sec
    line(x,y+50,x+(millis()-initialTime)*0.05, y+50+(millis()-initialTime)*0.01);     //50 px/sec
    line(x,y+100,x+(millis()-initialTime)*0.001, y+100+(millis()-initialTime)*0.01);  // 1 px/sec
    */
}   



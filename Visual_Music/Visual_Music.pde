import ddf.minim.*;
Minim minim;
AudioPlayer a1;

int startTime = millis();
int i = 0; 
float startX = 85; 
float startY = 20;

void setup(){
  size(500,500);
  smooth();
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3"); 
}

void stop()
{
   minim.stop() ;
   super.stop() ;
}
 

void draw(){
   //a1.play(); 
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
    /*float x = 50;
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



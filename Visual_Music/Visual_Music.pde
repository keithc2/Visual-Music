import ddf.minim.*;
Minim minim;
long initialTime;
int lastTime; 

AudioPlayer a1;

void setup(){
  /*size(500,500);
  smooth();
  frameRate(25);
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3");
  */
  size(512, 200);

   minim = new Minim(this);

  // specify 512 for the length of the sample buffers
  // the default buffer size is 1024
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3");
  lastTime = millis(); 
  
}

void stop()
{
 minim.stop() ;
 super.stop() ;
}

void draw(){
 //a1.play(); 
 noFill();
 //bezier(85, 20, 10, 10, 90, 90, 15, 80);
 fill(255);
 int steps = 1000;
 float startX = 85; 
 float startY = 20; 
 float framesToAnimate = 10000;

  
   
 for (int i = 0; i <= steps; i++) {
    int startTime = millis(); 
    int endTime = startTime + 500; 
    float t = i / float(steps);
    float endX = bezierPoint(85, 10, 90, 15, t);
    float endY = bezierPoint(20, 10, 90, 80, t);
    float lineLengthX = endX - startX;
    float lineLengthY = endY - startY; 
    
    if (millis() > startTime && millis() <  endTime) {
         
         /*long totalTime = endTime - startTime;
         long curTime = millis() - startTime;
         float perc = (float)curTime / (float)totalTime;
         */
         println("works!"); 
         line(startX, startY, startX+ (float)(millis() % framesToAnimate)/framesToAnimate*lineLengthX, startY + (float)(millis() % framesToAnimate)/framesToAnimate*lineLengthY );
         //line(startX, startY, startX+ 100*perc*lineLengthX, startY + 100*perc*lineLengthY ); 
    }
    
     
        
    startX = endX; 
    startY = endY; 
    
    
}
/*
 float x = 50;
 float y = 50;
 float lineLength = 400;
 //float framesToAnimate = 100;
 line(x, y, x + (float)(frameCount % framesToAnimate)/framesToAnimate*lineLength, y);
 
 float x = 50;
 float y = 50;                              //set the multiplier to adjust speed
 line(x,y,x+(millis()-initialTime)*0.01, y+(millis()-initialTime)*0.01);           //10 px/sec
 line(x,y+50,x+(millis()-initialTime)*0.05, y+50+(millis()-initialTime)*0.01);     //50 px/sec
 line(x,y+100,x+(millis()-initialTime)*0.001, y+100+(millis()-initialTime)*0.01);  // 1 px/sec
 */
   
}

void myDelay(float ms){
  int time = millis();
  int count = 0;
  while(millis() + time -time < ms)
  {
    count++;
  }
}

void mousePressed(){
 
}

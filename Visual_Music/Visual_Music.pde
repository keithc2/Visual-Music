import ddf.minim.*;
Minim minim;

AudioPlayer a1;

void setup(){
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3");
}

void stop()
{
 minim.stop() ;
 super.stop() ;
}

void draw(){
 a1.play(); 
}

void mousePressed(){
 
}

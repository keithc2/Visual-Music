import ddf.minim.*;
Minim minim;
AudioPlayer a1; 

Renderer test;

ArrayList<BrushStroke> brushStrokes = new ArrayList<BrushStroke>(); 
int i = 0; 
boolean finished = true;

void setup() {
  size(479,665);
  background(0); 
  smooth();
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3"); 
  populateBrushStroke();
  test = new Renderer(brushStrokes.get(0));
    
}
 

void draw() {
  //a1.play(); 
  if(finished)
  { 
      finished = false;
      test.setBrushStroke(brushStrokes.get(i));
      if(i + 1 != brushStrokes.size())
      {
        i++;
      }
  }   
        
   finished = test.render();  
   
}
     

 

void populateBrushStroke() {
  //blue top leftmost
  //blue stroke on top left
  brushStrokes.add(new BrushStroke(11, 3, color(0,78,184), color(0,78,184), 1, 10, 3));
  brushStrokes.add(new BrushStroke(12, 4, color(0,78,184), color(0,78,184), 1, 10, 3));
  brushStrokes.add(new BrushStroke(14, 5, color(0,78,184), color(0,78,184), 1, 10, 3));
  brushStrokes.add(new BrushStroke(16, 6, color(0,78,184), color(0,78,184), 1, 10, 3));
  brushStrokes.add(new BrushStroke(18, 7, color(0,78,184), color(0,78,184), 1, 10, 3));
    
  //teal stroke to right of that 
  brushStrokes.add(new BrushStroke(28, 4, color(5,52,76), color(5,52,76), 2, 10, 4));
  brushStrokes.add(new BrushStroke(30, 6, color(137, 216, 190), color(137,216, 190), 2, 10, 3));
  brushStrokes.add(new BrushStroke(33, 7, color(52, 126, 153), color(52, 126, 153), 2, 10, 3));
    
 //blue beneath purple
 brushStrokes.add(new BrushStroke(53, 8, color(35, 45, 101), color(35, 45, 101), 2, 10, 4));
 brushStrokes.add(new BrushStroke(55, 9, color(35, 45, 101), color(35, 45, 101), 2, 10, 4));
 brushStrokes.add(new BrushStroke(57, 10, color(35, 45, 101), color(35, 45, 101), 2, 10, 4));
 brushStrokes.add(new BrushStroke(59, 11, color(35, 45, 101), color(35, 45, 101), 2, 10, 4));
 brushStrokes.add(new BrushStroke(54, 9, color(255, 50), color(255, 50), 2, 10, 1));
 brushStrokes.add(new BrushStroke(57, 11, color(255, 50), color(255, 50), 2, 10, 1));   
    
 //purple strokes to right of that 
 brushStrokes.add(new BrushStroke(40, 8, color(33, 27, 77), color(33, 27, 77), 1, 10, 2));
 brushStrokes.add(new BrushStroke(42, 9, color(33, 27, 77), color(33, 27, 77), 1, 10, 2));
 brushStrokes.add(new BrushStroke(44, 10, color(94, 100, 174), color(94, 100, 174), 1, 10, 2));
 brushStrokes.add(new BrushStroke(46, 11, color(94, 100, 174), color(94, 100, 174), 1, 10, 2));
 brushStrokes.add(new BrushStroke(48, 12, color(121, 124, 188), color(121, 124, 188), 1, 10, 2));
 brushStrokes.add(new BrushStroke(50, 13, color(121, 124, 188), color(121, 124, 188), 1, 10, 2));
 
 //teal strokes to right of purple
 brushStrokes.add(new BrushStroke(89, 0, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(91, 1, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(93, 2, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(95, 3, color(81, 125, 108), color(81, 125, 108), 1, 10, 3));
 brushStrokes.add(new BrushStroke(97, 4, color(89, 140, 121), color(89, 140, 121), 1, 10, 3));
 brushStrokes.add(new BrushStroke(99, 5, color(113, 164, 145), color(113, 164, 145), 1, 10, 3));
 
 //more purpule strokes below 
brushStrokes.add(new BrushStroke(84, 16, color(104, 92, 196), color(104, 92, 196), 2, 10, 3));
 brushStrokes.add(new BrushStroke(86, 17, color(104,92, 196), color(104, 92, 196), 2, 10, 3));
 brushStrokes.add(new BrushStroke(88, 18, color(157, 149, 217), color(157, 149, 217), 2, 10, 3));
 brushStrokes.add(new BrushStroke(90, 19, color(157, 149, 217), color(157, 149, 217), 2, 10, 3));

 
//purple strokes
 brushStrokes.add(new BrushStroke(81, 17, color(104, 92, 196), color(104, 92, 196), 1, 10, 3));
 brushStrokes.add(new BrushStroke(83, 31, color(104,92, 196), color(104, 92, 196), 1, 10, 3));
 brushStrokes.add(new BrushStroke(85, 33, color(157, 149, 217), color(157, 149, 217), 1, 10, 3));
 brushStrokes.add(new BrushStroke(87, 35, color(157, 149, 217), color(157, 149, 217), 1, 10, 3));

 //teal strokes leftmost
 brushStrokes.add(new BrushStroke(3, 40, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(5, 41, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(7, 42, color(90, 140, 120), color(90, 140, 120), 1, 10, 3));
 brushStrokes.add(new BrushStroke(9, 43, color(81, 125, 108), color(81, 125, 108), 1, 10, 3));
 brushStrokes.add(new BrushStroke(11,44 , color(89, 140, 121), color(89, 140, 121), 1, 10, 3));
 brushStrokes.add(new BrushStroke(13, 45, color(113, 164, 145), color(113, 164, 145), 1, 10, 3));
 
 //blue strokes on top of that 
 brushStrokes.add(new BrushStroke(13, 29, color(5, 103, 211), color(5, 103, 211), 2, 10, 3));
 brushStrokes.add(new BrushStroke(15, 30, color(5, 103, 211), color(5, 103, 211), 2, 10, 3));
 brushStrokes.add(new BrushStroke(17, 31, color(5, 103, 211), color(5, 103, 211), 2, 10, 3));
 brushStrokes.add(new BrushStroke(19, 32, color(5, 103, 211), color(5, 103, 211), 2, 10, 3));
 brushStrokes.add(new BrushStroke(21, 33 , color(5, 103, 211), color(5, 103, 211), 2, 10, 3));
 
 //teal strokes with 2 
brushStrokes.add(new BrushStroke(30, 67, color(90, 140, 120), color(90, 140, 120), 2, 10, 3));
brushStrokes.add(new BrushStroke(32, 68, color(90, 140, 120), color(90, 140, 120), 2, 10, 3));
brushStrokes.add(new BrushStroke(34, 69, color(90, 140, 120), color(90, 140, 120), 2, 10, 3));
brushStrokes.add(new BrushStroke(36, 70, color(81, 125, 108), color(81, 125, 108), 2, 10, 3));
brushStrokes.add(new BrushStroke(38, 71, color(89, 140, 121), color(89, 140, 121), 2, 10, 3));
brushStrokes.add(new BrushStroke(40, 72, color(113, 164, 145), color(113, 164, 145), 2, 10, 3));

//purple strokes with 3
brushStrokes.add(new BrushStroke(60, 45, color(33, 27, 77), color(33, 27, 77), 3, 10, 3));
 brushStrokes.add(new BrushStroke(61, 47, color(33, 27, 77), color(33, 27, 77), 3, 10, 3));
 brushStrokes.add(new BrushStroke(62, 49, color(94, 100, 174), color(94, 100, 174), 3, 10, 3));
 brushStrokes.add(new BrushStroke(63, 51, color(94, 100, 174), color(94, 100, 174), 3, 10, 3));
 brushStrokes.add(new BrushStroke(64, 53, color(121, 124, 188), color(121, 124, 188), 3, 10, 3));
 brushStrokes.add(new BrushStroke(65, 55, color(121, 124, 188), color(121, 124, 188), 3, 10, 3));

//purple strokes with 1 
brushStrokes.add(new BrushStroke(39, 58, color(33, 27, 77), color(33, 27, 77), 1, 10, 3));
 brushStrokes.add(new BrushStroke(41, 59, color(33, 27, 77), color(33, 27, 77), 1, 10, 3));
 brushStrokes.add(new BrushStroke(43, 60, color(94, 100, 174), color(94, 100, 174), 1, 10, 3));
 brushStrokes.add(new BrushStroke(45, 61, color(94, 100, 174), color(94, 100, 174), 1, 10, 3));
 brushStrokes.add(new BrushStroke(47, 62, color(121, 124, 188), color(121, 124, 188), 1, 10, 3));
 brushStrokes.add(new BrushStroke(49, 63, color(121, 124, 188), color(121, 124, 188), 1, 10, 3));

//black strokes with 1
brushStrokes.add(new BrushStroke(31, 25, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(33, 26, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(35, 27, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(37, 28, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(39, 29, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(41, 30, color(0), color(0), 1, 10, 3));

//black strokes with 1 
brushStrokes.add(new BrushStroke(39, 49, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(41, 50, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(43, 51, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(45, 52, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(47, 53, color(0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(49, 54, color(0), color(0), 1, 10, 3));
 
 // orange square middle left 
brushStrokes.add(new BrushStroke(84, 138, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));
 brushStrokes.add(new BrushStroke(86, 139, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));
 brushStrokes.add(new BrushStroke(88, 140, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));
 brushStrokes.add(new BrushStroke(90, 141, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));
 brushStrokes.add(new BrushStroke(92, 142, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));
 brushStrokes.add(new BrushStroke(94, 143, color(241, 148, 18), color(241, 148, 18), 1, 10, 3));

//brighter orange square to right of that 
brushStrokes.add(new BrushStroke(166, 159, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(168, 160, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(170, 161, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(172, 162, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(174, 163, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(176, 164, color(255, 215, 21), color(255, 215, 21), 1, 10, 3));

//red number three square
brushStrokes.add(new BrushStroke(179, 53, color(249, 68, 0), color(249, 68, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(180, 55, color(249, 68, 0), color(249, 68, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(181, 57, color(249, 68, 0), color(249, 68, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(182, 59, color(249, 68, 0), color(249, 68, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(183, 61, color(249, 68, 0), color(255, 215, 21), 3, 10, 3));
 brushStrokes.add(new BrushStroke(184, 63, color(249, 68, 0), color(249, 68, 0), 3, 10, 3));




} 

void stop() {
   a1.close(); 
   minim.stop() ;
   super.stop() ;
}



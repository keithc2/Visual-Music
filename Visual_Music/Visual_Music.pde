import ddf.minim.*;
Minim minim;
AudioPlayer a1; 

Renderer test;

color c;
color c1; 
color c2;
Integer b;
ArrayList<BrushStroke> brushStrokes = new ArrayList<BrushStroke>();
ArrayList<Integer> xCoor = new ArrayList<Integer>(); 
ArrayList<Integer> yCoor = new ArrayList<Integer>(); 
color[] colors = new color[50]; 
ArrayList<Integer> bezierTypes = new ArrayList<Integer>(); 
int i = 0; 
boolean finished = true;
int x = 0;
int y = 0; 

void setup() {
  //size(479,665);
  size(284, 550); 
  background(0); 
  smooth();
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3"); 
  populateXAndY(); 
  populateColors();
  populateBrushStroke1();
  populateBrushStroke2(); 
  populateBrushStroke3(); 
  populateBrushStroke4(); 
  populateBrushStroke6(); 
  populateBrushStroke7(); 
  populateBrushStroke8();
  populateBrushStroke9(); 
  populateBrushStroke10(); 
  populateBrushStroke11();
  populateBrushStroke12();
  populateBrushStroke13();
  populateBrushStroke14();
  populateBrushStroke15();
  populateBrushStroke16();
  populateBrushStroke17();
  populateBrushStroke18();
  populateBrushStroke19(); 
  
  
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

void populateXAndY() {
  for(int i = 0; i <= 284; i+= 15)
  {
    for(int j = 0; j <= 550; j += 5)
    {
      xCoor.add(i); 
      yCoor.add(j); 
    }
  } 
}

void getXAndY() {
  int elementX = int(random(xCoor.size()));
  x = xCoor.get(elementX);
  xCoor.remove(elementX); 
  int elementY = int(random(yCoor.size())); 
  y = yCoor.get(elementY); 
  yCoor.remove(elementY);
  
}
   
  
  
     
void populateColors(){
  colors[0] = color(232, 76, 3);
  colors[1] = color(243, 141, 2);
  colors[2] = color(232, 91, 0);
  colors[3] = color(220, 206, 14);
  colors[4] = color(241, 128, 23);
  colors[5] = color(242, 92, 23);
  colors[6] = color(203, 119, 0);
  colors[7] = color(231, 201, 32);
  colors[8] = color(232, 149, 50);
  colors[9] = color(213, 58, 1);
  
  colors[10] = color(232, 168, 46);
  colors[11] = color(252, 165, 32);
  colors[12] = color(245, 205, 92);
  colors[13] = color(232, 125, 28);
  colors[14] = color(230, 104, 5);
  colors[15] = color(216, 109, 1);
  colors[16] = color(204, 9, 3);
  colors[17] = color(216, 27, 1);
  colors[18] = color(230, 195, 38);
  colors[19] = color(234, 228, 42);
  
  colors[20] = color(229, 191, 33);
  colors[21] = color(214, 131, 21);
  colors[22] = color(249, 145, 3);
  colors[23] = color(253, 132, 8);
  colors[24] = color(253, 93, 21);
  colors[25] = color(228, 227, 58);
  colors[26] = color(255, 119, 25);
  colors[27] = color(216, 203, 79);
  colors[28] = color(234, 145, 3);
  colors[29] = color(244, 84, 24);
  
  colors[30] = color(237, 70, 0);
  colors[31] = color(249, 52, 12);
  colors[32] = color(229, 42, 3);
  colors[33] = color(241, 160, 21);
  colors[34] = color(251, 100, 10);
  colors[35] = color(246, 156, 0);
  colors[36] = color(234, 156, 0);
  colors[37] = color(234, 149, 10);
  colors[38] = color(242, 115, 5);
  colors[39] = color(230, 220, 59);
  
  colors[40] = color(250, 171, 27);
  colors[41] = color(233, 58, 1);
  colors[42] = color(226, 39, 6);
  colors[43] = color(220, 208, 89);
  colors[44] = color(248, 191, 31);
  colors[45] = color(241, 177, 27);
  colors[46] = color(240, 59, 3);
  colors[47] = color(245, 196, 75);
  colors[48] = color(248, 88, 12);
  colors[49] = color(221, 18, 0);
  
  bezierTypes.add(new Integer(1));
  bezierTypes.add(new Integer(2));
  bezierTypes.add(new Integer(15));
  
}

void populateBrushStroke1() {
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
}
 
 void populateBrushStroke2() {
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke3() { 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 

 

 
  
  getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 }
 
 void populateBrushStroke4() {
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke6() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke7() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke8() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke9() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke10() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke11() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke12() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke13() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke14() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke15() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke16() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }
 
 void populateBrushStroke17() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }

 void populateBrushStroke18() { 
    getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 }

 
 //Eiffel tower 
 void populateBrushStroke19() { 
   
   //left part of eiffel tower 
   brushStrokes.add(new BrushStroke(134, 30, color(238, 231, 187), color(238, 231, 187), 5, 150, 6));
   brushStrokes.add(new BrushStroke(136, 30, color(238, 231, 187), color(238, 231, 187), 5, 150, 6));
   brushStrokes.add(new BrushStroke(134, 30, color(238, 231, 187), color(238, 231, 187), 6, 150, 6));
   brushStrokes.add(new BrushStroke(136, 30, color(238, 231, 187), color(238, 231, 187), 6, 150, 6));
   brushStrokes.add(new BrushStroke(134, 30, color(238, 231, 187), color(238, 231, 187), 4, 150, 6));
   brushStrokes.add(new BrushStroke(136, 30, color(238, 231, 187), color(238, 231, 187), 4, 150, 6));
   brushStrokes.add(new BrushStroke(134, 30, color(238, 231, 187), color(238, 231, 187), 7, 150, 6));
   brushStrokes.add(new BrushStroke(136, 30, color(238, 231, 187), color(238, 231, 187), 7, 150, 6));
   
   //right part of eiffel tower 
   brushStrokes.add(new BrushStroke(142, 30, color(238, 231, 187), color(238, 231, 187), 9, 150, 6));
   brushStrokes.add(new BrushStroke(144, 30, color(238, 231, 187), color(238, 231, 187), 9, 150, 6));
   brushStrokes.add(new BrushStroke(142, 30, color(238, 231, 187), color(238, 231, 187), 10, 150, 6));
   brushStrokes.add(new BrushStroke(144, 30, color(238, 231, 187), color(238, 231, 187), 10, 150, 6));
   brushStrokes.add(new BrushStroke(142, 30, color(238, 231, 187), color(238, 231, 187), 8, 150, 6));
   brushStrokes.add(new BrushStroke(144, 30, color(238, 231, 187), color(238, 231, 187), 8, 150, 6));
   brushStrokes.add(new BrushStroke(142, 30, color(238, 231, 187), color(238, 231, 187), 11, 150, 6));
   brushStrokes.add(new BrushStroke(144, 30, color(238, 231, 187), color(238, 231, 187), 11, 150, 6));
   
   /*//shading 
   brushStrokes.add(new BrushStroke(254, 268, color(238, 231, 187), color(227, 205, 25), 3, 150, 10));
   brushStrokes.add(new BrushStroke(266, 350, color(238, 231, 187), color(236, 150, 2), 3, 150, 10));
   brushStrokes.add(new BrushStroke(258, 300, color(238, 231, 187), color(227, 205, 25), 3, 150, 10));
   brushStrokes.add(new BrushStroke(274, 378, color(238, 231, 187), color(236, 150, 2), 3, 150, 10));
   
   brushStrokes.add(new BrushStroke(296, 457, color(238, 231, 187), color(227, 205, 25), 3, 150, 10));
   brushStrokes.add(new BrushStroke(313, 490, color(238, 231, 187), color(236, 150, 2), 3, 150, 10));
   brushStrokes.add(new BrushStroke(280, 402, color(238, 231, 187), color(227, 205, 25), 3, 150, 10));
   brushStrokes.add(new BrushStroke(300, 461, color(238, 231, 187), color(236, 150, 2), 3, 150, 10));
   
   brushStrokes.add(new BrushStroke(235, 298, color(227, 205, 25), color(238, 231, 187), 3, 150, 10));
   brushStrokes.add(new BrushStroke(230, 335, color(236, 150, 2), color(238, 231, 187), 3, 150, 10));
   
   brushStrokes.add(new BrushStroke(229, 353, color(227, 205, 25), color(238, 231, 187), 3, 150, 10));
   brushStrokes.add(new BrushStroke(210, 440, color(236, 150, 2), color(238, 231, 187), 3, 150, 10));
   
   brushStrokes.add(new BrushStroke(201, 465, color(227, 205, 25), color(238, 231, 187), 3, 150, 10));
   brushStrokes.add(new BrushStroke(197, 454, color(236, 150, 2), color(238, 231, 187), 3, 150, 10));
   
   brushStrokes.add(new BrushStroke(235, 298, color(227, 205, 25), color(238, 231, 187), 3, 150, 10));
   brushStrokes.add(new BrushStroke(230, 335, color(236, 150, 2), color(238, 231, 187), 3, 150, 10));
   */
   
   
   
   //bottom curve
   brushStrokes.add(new BrushStroke(50, 510 , color(238, 231, 187), color(238, 231, 187), 12, 150, 20));
   //brushStrokes.add(new BrushStroke(245, 90, color(238, 231, 187), color(238, 231, 187), 9, 150, 6));
   //brushStrokes.add(new BrushStroke(243, 90, color(238, 231, 187), color(238, 231, 187), 10, 150, 6));
   
   //top lines 
   brushStrokes.add(new BrushStroke(100, 354, color(85, 0, 0), color(85, 0, 0), 13, 150, 1));
   brushStrokes.add(new BrushStroke(100, 356, color(237, 213, 129 ), color(237, 213, 129), 13, 150, 3));
   brushStrokes.add(new BrushStroke(100, 359, color(237, 213, 129), color(237, 213, 129), 13, 150, 3));
   brushStrokes.add(new BrushStroke(100, 362, color(85, 0, 0), color(85, 0, 0), 13, 150, 3));
   brushStrokes.add(new BrushStroke(100, 378, color(148, 106, 76), color(148, 106, 76), 13, 150, 3));
   brushStrokes.add(new BrushStroke(100, 385, color(237, 213, 129), color(237, 213, 129), 13, 150, 1));
   
   
   //bottom lines
   brushStrokes.add(new BrushStroke(65, 457, color(237, 213, 129), color(237, 213, 129), 14, 150, 1));
   brushStrokes.add(new BrushStroke(65, 474, color(232, 202, 98), color(232, 202, 98), 14, 150, 3));
   brushStrokes.add(new BrushStroke(65, 478, color(85, 0, 0), color(85, 0, 0), 14, 150, 3));
   brushStrokes.add(new BrushStroke(65, 482, color(232, 202, 98), color(232, 202, 98), 14, 150, 3));
   brushStrokes.add(new BrushStroke(65, 499, color(232, 202, 98), color(232, 202, 98), 14, 150, 1));
   
   
   
   
  
 } 


void stop() {
   a1.close(); 
   minim.stop() ;
   super.stop() ;
}



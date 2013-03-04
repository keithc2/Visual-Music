import ddf.minim.*;
Minim minim;
AudioPlayer a1; 

Renderer test;

color c;
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
  size(479,665);
  //background(0); 
  smooth();
  minim = new Minim(this);
  a1 = minim.loadFile("The Cinematic Orchestra - Transformation.mp3"); 
  populateXAndY(); 
  populateColors(); 
  populateBrushStroke1();
  populateBrushStroke2(); 
  populateBrushStroke3(); 
  populateBrushStroke4(); 
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
  for(int i = 94; i <= 378; i+= 15)
  {
    for(int j = 0; j <= 512; j += 5)
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
  bezierTypes.add(new Integer(3));
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
 
 
 
 /*
 int element = (int)random(colors.length);
 c = colors[element];
 println("c = " + c + " element = " + element);
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(181, 108, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 109, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(185, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(187, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(189, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(191, 113, c, c, b, 10, 3));

 element = (int)random(colors.length);
 c = colors[element];
 println("c = " + c + " element = " + element);
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(193, 109, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(195, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(197, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(199, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(201, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(203, 114, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(205, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(207, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(209, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(211, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(213, 116, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(215, 117, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(217, 119, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(219, 120, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(221, 121, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(223, 122, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(225, 123, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(227, 124, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(229, 109, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(231, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(233, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(235, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(237, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(239, 114, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(242, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(244, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(246, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(248, 116, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(250, 117, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(252, 118, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(253, 108, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(255, 109, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(257, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(259, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(261, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(263, 113, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(266, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(268, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(270, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(272, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(274, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(276, 116, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(271, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(273, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(275, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(277, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(279, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(281, 116, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(300, 108, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(302, 109, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(304, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(306, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(308, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(310, 113, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(281, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(283, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(285, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(287, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(289, 116, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(291, 117, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(235, 153, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(237, 154, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(239, 155, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(241, 156, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(243, 157, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(245, 158, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(240, 176, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(242, 177, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(244, 178, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(246, 179, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(248, 180, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(250, 181, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(265, 126, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(267, 127, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(269, 128, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(271, 129, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(273, 130, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(275, 131, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(280, 161, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(282, 162, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(284, 163, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(286, 164, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(288, 165, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(290, 166, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(310, 201, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(312, 202, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(314, 203, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(316, 204, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(318, 205, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(320, 206, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(125, 208, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 209, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 210, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 211, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 212, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 213, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(176, 115, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(178, 116, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(180, 117, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(182, 118, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(184, 119, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(186, 120, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(170, 124, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(172, 125, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(174, 126, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(176, 127, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(178, 128, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(180, 129, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(166, 131, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(168, 132, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(170, 133, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(172, 134, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(174, 135, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(176, 136, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(164, 139, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(166, 140, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(168, 141, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(170, 142, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(172, 143, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(174, 144, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(162, 147, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(164, 148, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(166, 149, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(168, 150, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(170, 151, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(172, 152, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(158, 157, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(160, 158, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(162, 159, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(164, 160, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(166, 161, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(168, 162, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(154, 167, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(156, 168, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(158, 169, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(160, 170, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(162, 171, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(164, 172, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(150, 176, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(154, 177, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(156, 178, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(158, 179, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(160, 180, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(162, 181, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(148, 185, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(150, 186, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(152, 187, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(154, 188, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(156, 189, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(158, 190, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(146, 194, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(148, 195, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(150, 196, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(152, 197, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(154, 198, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(156, 199, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(144, 203, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(146, 204, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(148, 205, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(150, 206, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(152, 207, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(154, 208, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(140, 212, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(142, 213, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(144, 214, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(146, 215, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(148, 216, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(150, 217, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(138, 221, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(140, 222, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(142, 223, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(144, 224, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(146, 225, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(148, 226, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(134, 230, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(136, 231, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(138, 232, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(140, 233, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(142, 234, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(144, 235, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(132, 239, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(134, 240, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(136, 241, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(138, 242, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(140, 243, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(142, 244, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(128, 248, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(130, 249, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(132, 250, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(134, 251, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(136, 252, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(138, 253, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(126, 257, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(128, 258, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(130, 259, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(132, 260, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(134, 261, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(136, 262, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(122, 266, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(124, 267, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(126, 268, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(128, 269, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(130, 270, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(132, 271, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(120, 275, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(122, 276, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(124, 277, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(126, 278, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(128, 279, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(130, 280, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(116, 284, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(118, 285, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(120, 286, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(122, 287, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(124, 288, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(126, 289, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(114, 293, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(116, 294, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(118, 295, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(120, 296, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(122, 297, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(124, 298, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(110, 302, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(112, 303, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(114, 304, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(116, 305, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(118, 306, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(120, 307, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(108, 311, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(110, 312, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(112, 313, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(114, 314, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(116, 315, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(118, 316, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(106, 320, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(108, 321, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(110, 322, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(112, 323, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(114, 324, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(116, 325, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(104, 329, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(106, 330, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(108, 331, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(110, 332, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(112, 333, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(114, 334, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(102, 338, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(104, 339, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(106, 340, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(108, 341, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(110, 342, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(112, 343, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(100, 347, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(102, 348, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(104, 349, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(106, 350, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(108, 351, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(110, 352, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(98, 356, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(100, 357, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(102, 358, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(104, 359, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(106, 360, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(108, 361, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(96, 365, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(98, 366, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(100, 367, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(102, 368, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(104, 369, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(106, 370, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(94, 374, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(96, 375, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(98, 376, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(100, 377, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(102, 378, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(104, 379, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(92, 384, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(94, 385, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(96, 386, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(98, 387, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(100, 388, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(102, 389, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(90, 393, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(92, 394, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(94, 395, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(96, 396, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(98, 397, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(100, 398, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(88, 402, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(90, 403, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(92, 404, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(94, 405, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(96, 406, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(98, 407, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(86, 411, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(88, 412, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(90, 413, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(92, 414, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(94, 415, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(96, 416, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(84, 421, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(86, 422, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(88, 423, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(90, 424, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(92, 425, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(94, 426, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(82, 430, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(84, 431, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(86, 432, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(88, 433, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(90, 434, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(92, 435, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(80, 439, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(82, 440, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(84, 441, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(86, 442, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(88, 443, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(90, 444, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(78, 448, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(80, 449, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(82, 450, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(84, 451, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(86, 452, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(88, 453, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(76, 457, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(78, 458, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(80, 459, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(82, 460, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(84, 461, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(86, 462, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(74, 467, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(76, 468, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(78, 469, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(80, 470, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(82, 471, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(84, 472, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(72, 476, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(74, 477, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(76, 478, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(78, 479, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(80, 480, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(82, 481, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(70, 485, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(72, 486, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(74, 487, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(76, 488, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(78, 489, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(80, 490, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(68, 494, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(70, 495, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(72, 496, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(74, 497, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(76, 498, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(78, 499, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(69, 504, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(71, 505, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(73, 506, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(75, 507, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(77, 508, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(79, 509, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(71, 509, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(73, 510, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(75, 511, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(77, 512, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(79, 513, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(81, 514, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(69, 514, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(71, 515, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(73, 516, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(75, 517, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(77, 518, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(79, 519, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(181, 110, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 111, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(185, 112, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(187, 113, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(189, 114, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(191, 115, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(179, 119, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 120, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 121, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(185, 122, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(187, 123, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(189, 124, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(177, 128, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 129, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 130, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 131, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(185, 132, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(187, 133, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(175, 137, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(177, 138, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 139, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 140, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 141, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(185, 142, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(173, 146, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(175, 147, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(177, 148, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 149, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 150, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 151, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(171, 155, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(173, 156, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(175, 157, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(177, 158, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 159, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 160, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(169, 165, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(171, 166, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(173, 167, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(175, 168, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(177, 169, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 170, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(167, 174, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(169, 175, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(171, 176, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(173, 177, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(175, 178, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(177, 179, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(165, 183, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(167, 184, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(169, 185, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(171, 186, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(173, 187, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(175, 188, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(163, 192, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(165, 193, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(167, 194, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(179, 195, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(181, 196, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(183, 197, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(161, 201, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(163, 202, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(165, 203, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(167, 204, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(169, 205, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(171, 206, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(159, 211, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(161, 212, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(163, 213, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(165, 214, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(167, 215, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(169, 216, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(157, 220, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(159, 221, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(161, 222, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(163, 223, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(165, 224, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(167, 225, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(154, 229, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(156, 230, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(158, 231, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(160, 232, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(162, 233, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(164, 234, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(151, 238, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(153, 239, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(155, 240, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(157, 241, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(159, 242, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(161, 243, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(149, 247, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(151, 248, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(153, 249, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(155, 250, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(157, 251, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(159, 252, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(147, 256, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(149, 257, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(151, 258, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(153, 259, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(155, 260, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(157, 261, c, c, b, 10, 3)); 

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(145, 266, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(147, 267, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(149, 268, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(151, 269, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(153, 270, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(155, 271, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(143, 275, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(145, 276, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(147, 277, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(149, 278, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(151, 279, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(153, 280, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(141, 284, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(143, 285, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(145, 286, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(147, 287, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(149, 288, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(151, 289, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(139, 293, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(141, 294, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(143, 295, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(145, 296, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(147, 297, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(149, 298, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(137, 302, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(139, 303, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(141, 304, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(143, 305, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(145, 306, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(147, 307, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(135, 311, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(137, 312, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(139, 313, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(141, 314, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(143, 315, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(145, 316, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(133, 320, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 321, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(137, 322, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(139, 323, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(141, 324, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(143, 325, c, c, b, 10, 3)); 

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(131, 329, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 330, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 331, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(137, 332, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(139, 333, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(141, 334, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(129, 338, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 339, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 340, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 341, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(137, 342, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(139, 343, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(127, 348, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 349, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 350, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 351, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 352, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(137, 353, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(125, 357, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 358, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 359, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 360, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 361, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(135, 362, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(123, 366, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(125, 367, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 368, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 369, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 370, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(133, 371, c, c, b, 10, 3)); 

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(121, 376, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(123, 377, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(125, 378, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 379, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 380, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(131, 381, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(119, 385, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(121, 386, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(123, 387, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(125, 388, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 389, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(129, 390, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(117, 394, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(119, 395, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(121, 396, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(123, 397, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(125, 398, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(127, 399, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(115, 403, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(117, 404, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(119, 405, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(121, 406, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(123, 407, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(125, 408, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(113, 412, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(115, 413, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(117, 414, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(119, 415, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(121, 416, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(123, 417, c, c, b, 10, 3)); 

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(111, 421, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(113, 422, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(115, 423, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(117, 424, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(119, 425, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(121, 426, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(109, 430, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(111, 431, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(113, 432, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(115, 433, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(117, 434, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(119, 435, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(107, 439, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(109, 440, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(111, 441, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(113, 442, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(115, 443, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(117, 444, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(105, 448, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(107, 449, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(109, 450, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(111, 451, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(113, 452, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(115, 453, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(103, 456, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(105, 457, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(107, 458, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(109, 459, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(111, 460, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(113, 461, c, c, b, 10, 3)); 

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(101, 465, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(103, 466, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(105, 467, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(107, 468, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(109, 469, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(111, 470, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(99, 474, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(101, 475, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(103, 476, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(105, 477, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(107, 478, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(109, 479, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(97, 483, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(99, 484, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(101, 485, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(103, 486, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(105, 487, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(107, 488, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(95, 492, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(97, 493, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(99, 494, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(101, 495, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(103, 496, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(105, 497, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(93, 501, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(95, 502, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(97, 503, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(99, 504, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(101, 505, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(103, 506, c, c, b, 10, 3));
 
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(91, 510, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(93, 511, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(95, 512, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(97, 513, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(99, 514, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(101, 515, c, c, b, 10, 3));

 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(196, 120, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(198, 121, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(200, 122, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(202, 123, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(204, 124, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(206, 125, c, c, b, 10, 3)); 
 
 //Last corner
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(419, 503, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(421, 504, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(423, 505, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(425, 506, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(427, 507, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(429, 508, c, c, b, 10, 3));
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
 
 //yellow number 1 square at 172, 76
brushStrokes.add(new BrushStroke(172, 76, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(174, 77, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(176, 78, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(178, 79, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(180, 80, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));
 brushStrokes.add(new BrushStroke(182, 81, color(235, 16, 21), color(235, 16, 21), 1, 10, 3));

//blue stroke middle top right 
 brushStrokes.add(new BrushStroke(353, 52, color(1, 173, 173), color(1, 173, 173), 1, 10, 3));
 brushStrokes.add(new BrushStroke(355, 53, color(1, 173, 173), color(1, 173, 173), 1, 10, 3));
 brushStrokes.add(new BrushStroke(357, 54, color(1, 125, 126), color(1, 125, 126), 1, 10, 3));
 brushStrokes.add(new BrushStroke(359, 55, color(1, 125, 126), color(1, 125, 126), 1, 10, 3));
 brushStrokes.add(new BrushStroke(361, 56, color(1, 173, 173), color(1, 173, 173), 1, 10, 3));
 brushStrokes.add(new BrushStroke(363, 57, color(1, 173, 173), color(1, 173, 173), 1, 10, 3));

//red and black brush stroke number 2 above it 
 brushStrokes.add(new BrushStroke(358, 40, color(188, 15, 0), color(0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(360, 41, color(188, 15, 0), color(0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(362, 42, color(188, 15, 0), color(0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(364, 43, color(188, 15, 0), color(0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(366, 44, color(188, 15, 0), color(0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(368, 45, color(188, 15, 0), color(0), 2, 10, 3));
 
 //yellow below dark red number 3
brushStrokes.add(new BrushStroke(388, 292, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));
 brushStrokes.add(new BrushStroke(389, 294, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));
 brushStrokes.add(new BrushStroke(390, 296, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));
 brushStrokes.add(new BrushStroke(391, 298, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));
 brushStrokes.add(new BrushStroke(392, 300, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));
 brushStrokes.add(new BrushStroke(393, 302, color(176, 133, 17), color(234, 27, 32), 3, 10, 3));

//dark red number 2 
brushStrokes.add(new BrushStroke(378, 305, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(380, 306, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(382, 307, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(384, 308, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(386, 309, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(388, 310, color(111, 0, 0), color(111, 0, 0), 2, 10, 3));

//bright yellow number 1 
brushStrokes.add(new BrushStroke(382, 319, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 brushStrokes.add(new BrushStroke(384, 320, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 brushStrokes.add(new BrushStroke(386, 321, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 brushStrokes.add(new BrushStroke(388, 322, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 brushStrokes.add(new BrushStroke(390, 323, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 brushStrokes.add(new BrushStroke(392, 324, color(248, 190, 16), color(248, 190, 16), 1, 10, 3));
 
 //bright reds in middle left number 3 (send from here) 
 brushStrokes.add(new BrushStroke(390, 127, color(144, 0, 0), color(144, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(391, 129, color(144, 0, 0), color(144, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(392, 131, color(144, 0, 0), color(144, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(393, 133, color(213, 0, 0), color(213, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(394, 135, color(213, 0, 0), color(213, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(395, 137, color(213, 0, 0), color(213, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(396, 139, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(397, 141, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(398, 143, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(399, 145, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(400, 147, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(401, 149, color(244, 0, 0), color(244, 0, 0), 3, 10, 3));
 
 //bright red number 1
 brushStrokes.add(new BrushStroke(404, 156, color(248, 10, 3), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(406, 157, color(248, 10, 3), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(408, 158, color(248, 10, 3), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(410, 159, color(248, 10, 3), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(412, 160, color(248, 10, 3), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(414, 161, color(248, 10, 3), color(0), 1, 10, 3));
 
 //red square type 2
brushStrokes.add(new BrushStroke(59, 235, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(61, 236, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(63, 237, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(65, 238, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(67, 239, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));
 brushStrokes.add(new BrushStroke(69, 240, color(155, 0, 0), color(155, 0, 0), 2, 10, 3));

//red square type 3
 brushStrokes.add(new BrushStroke(46, 263, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(47, 265, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(48, 267, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(49, 269, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(50, 271, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(51, 273, color(121, 0, 0), color(155, 0, 0), 3, 10, 3));

//yellow square type 2
 brushStrokes.add(new BrushStroke(69, 285, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 brushStrokes.add(new BrushStroke(71, 286, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 brushStrokes.add(new BrushStroke(73, 287, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 brushStrokes.add(new BrushStroke(75, 288, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 brushStrokes.add(new BrushStroke(77, 289, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 brushStrokes.add(new BrushStroke(79, 290, color(218, 215, 18), color(218, 215, 18), 2, 10, 3));
 
 //yellow square type 2
 brushStrokes.add(new BrushStroke(68, 318, color(245, 176, 33), color(245, 176, 33), 2, 10, 3));
 brushStrokes.add(new BrushStroke(70, 319, color(245, 176, 33), color(245, 176, 33), 2, 10, 3));
 brushStrokes.add(new BrushStroke(72, 320, color(250, 204, 67), color(250, 204, 67), 2, 10, 3));
 brushStrokes.add(new BrushStroke(74, 321, color(250, 204, 67), color(250, 204, 67), 2, 10, 3));
 brushStrokes.add(new BrushStroke(76, 322, color(245, 176, 33), color(245, 176, 33), 2, 10, 3));
 brushStrokes.add(new BrushStroke(78, 323, color(245, 176, 33), color(245, 176, 33), 2, 10, 3));
 

  //pink square type 1
 brushStrokes.add(new BrushStroke(311, 196, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(313, 197, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(315, 198, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(317, 199, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(319, 200, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(321, 201, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(341, 163, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(343, 164, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(345, 165, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(347, 166, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(349, 167, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(351, 168, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));

 //pink square type 1
 brushStrokes.add(new BrushStroke(379, 112, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(381, 113, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(383, 114, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(385, 115, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(387, 116, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(389, 117, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(207, 185, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(209, 186, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(211, 187, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(213, 188, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(215, 189, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(217, 190, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));

 //pink square type 1
 brushStrokes.add(new BrushStroke(191, 236, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(193, 237, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(195, 238, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(197, 239, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(199, 240, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(201, 241, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(203, 272, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(205, 273, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(207, 274, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(209, 275, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(211, 276, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(213, 277, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(165, 318, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(167, 319, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(169, 320, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(171, 321, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(173, 322, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(175, 323, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(162, 413, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(164, 414, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(166, 415, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(168, 416, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(170, 417, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(172, 418, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));

 //pink square type 1
 brushStrokes.add(new BrushStroke(336, 140, color(186, 68, 114), color(186, 68, 114), 3, 10, 3));
 brushStrokes.add(new BrushStroke(337, 142, color(186, 68, 114), color(186, 68, 114), 3, 10, 3));
 brushStrokes.add(new BrushStroke(338, 144, color(241, 178, 212), color(241, 178, 212), 3, 10, 3));
 brushStrokes.add(new BrushStroke(339, 146, color(241, 178, 212), color(241, 178, 212), 3, 10, 3));
 brushStrokes.add(new BrushStroke(340, 148, color(222, 78, 157), color(222, 78, 157), 3, 10, 3));
 brushStrokes.add(new BrushStroke(341, 150, color(222, 78, 157), color(222, 78, 157), 3, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(426, 200, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 201, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(430, 202, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(432, 203, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(434, 204, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(436, 205, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(176, 200, color(186, 68, 114), color(186, 68, 114), 3, 10, 3));
 brushStrokes.add(new BrushStroke(177, 202, color(186, 68, 114), color(186, 68, 114), 3, 10, 3));
 brushStrokes.add(new BrushStroke(178, 204, color(241, 178, 212), color(241, 178, 212), 3, 10, 3));
 brushStrokes.add(new BrushStroke(179, 206, color(241, 178, 212), color(241, 178, 212), 3, 10, 3));
 brushStrokes.add(new BrushStroke(180, 208, color(222, 78, 157), color(222, 78, 157), 3, 10, 3));
 brushStrokes.add(new BrushStroke(181, 210, color(222, 78, 157), color(222, 78, 157), 3, 10, 3));
 
 //pink square type 1
 brushStrokes.add(new BrushStroke(154, 230, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(156, 231, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(158, 232, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(160, 233, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(162, 234, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(164, 235, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));

 //pink square type 1
 brushStrokes.add(new BrushStroke(140, 290, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(142, 291, color(186, 68, 114), color(186, 68, 114), 1, 10, 3));
 brushStrokes.add(new BrushStroke(144, 292, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(146, 293, color(241, 178, 212), color(241, 178, 212), 1, 10, 3));
 brushStrokes.add(new BrushStroke(148, 294, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 brushStrokes.add(new BrushStroke(150, 295, color(222, 78, 157), color(222, 78, 157), 1, 10, 3));
 
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(47, 425, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(49, 426, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(51, 427, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(53, 428, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(55, 429, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(57, 430, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(15, 444, color(250, 29, 56), color(250, 29, 56), 2, 10, 3));
 brushStrokes.add(new BrushStroke(17, 445, color(252, 105, 123), color(252, 105, 123), 2, 10, 3));
 brushStrokes.add(new BrushStroke(19, 446, color(252, 84, 105), color(252, 84, 105), 2, 10, 3));
 brushStrokes.add(new BrushStroke(21, 447, color(251, 55, 80), color(251, 55, 80), 2, 10, 3));
 brushStrokes.add(new BrushStroke(23, 448, color(250, 29, 56), color(250, 29, 56), 2, 10, 3));
 brushStrokes.add(new BrushStroke(25, 449, color(248, 5, 36), color(248, 5, 36), 2, 10, 3));

 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(102, 119, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(104, 120, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(106, 121, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(108, 122, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(110, 123, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(112, 124, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(22, 307, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(24, 308, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(26, 309, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(28, 310, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(30, 311, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(32, 312, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(36, 386, color(250, 29, 56), color(250, 29, 56), 2, 10, 3));
 brushStrokes.add(new BrushStroke(38, 387, color(252, 105, 123), color(252, 105, 123), 2, 10, 3));
 brushStrokes.add(new BrushStroke(40, 388, color(252, 84, 105), color(252, 84, 105), 2, 10, 3));
 brushStrokes.add(new BrushStroke(42, 389, color(251, 55, 80), color(251, 55, 80), 2, 10, 3));
 brushStrokes.add(new BrushStroke(44, 390, color(250, 29, 56), color(250, 29, 56), 2, 10, 3));
 brushStrokes.add(new BrushStroke(46, 391, color(248, 5, 36), color(248, 5, 36), 2, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(80, 216, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(82, 217, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(84, 218, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(86, 219, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(88, 220, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(90, 221, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(87, 199, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(88, 201, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(89, 203, color(252, 84, 105), color(252, 84, 105), 3, 10, 3));
 brushStrokes.add(new BrushStroke(90, 205, color(251, 55, 80), color(251, 55, 80), 3, 10, 3));
 brushStrokes.add(new BrushStroke(91, 207, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(92, 209, color(248, 5, 36), color(248, 5, 36), 3, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(43, 467, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(44, 469, color(252, 105, 123), color(252, 105, 123), 3, 10, 3));
 brushStrokes.add(new BrushStroke(45, 471, color(252, 84, 105), color(252, 84, 105), 3, 10, 3));
 brushStrokes.add(new BrushStroke(46, 473, color(251, 55, 80), color(251, 55, 80), 3, 10, 3));
 brushStrokes.add(new BrushStroke(47, 475, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(48, 477, color(248, 5, 36), color(248, 5, 36), 3, 10, 3));

 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(22, 478, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(24, 479, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(26, 480, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(28, 481, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(30, 482, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(32, 483, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(80, 216, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(82, 217, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(84, 218, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(86, 219, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(88, 220, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(90, 221, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(1, 481, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(3, 482, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(5, 483, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(9, 484, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(11, 485, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(13, 486, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(420, 291, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(422, 292, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(424, 293, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(426, 294, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 295, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(430, 296, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(16, 114, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(18, 115, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(20, 116, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(22, 117, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(24, 118, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(26, 119, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(46, 142, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(48, 143, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(50, 144, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(52, 145, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(54, 146, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(56, 147, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(40, 156, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(42, 157, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(44, 158, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(46, 159, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(48, 160, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(50, 161, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(23, 210, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(25, 211, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(27, 212, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(29, 213, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(31, 214, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(33, 215, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 1
 brushStrokes.add(new BrushStroke(384, 245, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(386, 246, color(252, 105, 123), color(252, 105, 123), 1, 10, 3));
 brushStrokes.add(new BrushStroke(388, 247, color(252, 84, 105), color(252, 84, 105), 1, 10, 3));
 brushStrokes.add(new BrushStroke(390, 248, color(251, 55, 80), color(251, 55, 80), 1, 10, 3));
 brushStrokes.add(new BrushStroke(392, 249, color(250, 29, 56), color(250, 29, 56), 1, 10, 3));
 brushStrokes.add(new BrushStroke(394, 250, color(248, 5, 36), color(248, 5, 36), 1, 10, 3));
 
 //reddish pink square type 3
 brushStrokes.add(new BrushStroke(404, 518, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(406, 519, color(252, 105, 123), color(252, 105, 123), 3, 10, 3));
 brushStrokes.add(new BrushStroke(408, 520, color(252, 84, 105), color(252, 84, 105), 3, 10, 3));
 brushStrokes.add(new BrushStroke(410, 521, color(251, 55, 80), color(251, 55, 80), 3, 10, 3));
 brushStrokes.add(new BrushStroke(412, 522, color(250, 29, 56), color(250, 29, 56), 3, 10, 3));
 brushStrokes.add(new BrushStroke(414, 523, color(248, 5, 36), color(248, 5, 36), 3, 10, 3));
 
 //pink square type 2
 brushStrokes.add(new BrushStroke(102, 440, color(186, 68, 114), color(186, 68, 114), 2, 10, 3));
 brushStrokes.add(new BrushStroke(104, 441, color(186, 68, 114), color(186, 68, 114), 2, 10, 3));
 brushStrokes.add(new BrushStroke(106, 442, color(241, 178, 212), color(241, 178, 212), 2, 10, 3));
 brushStrokes.add(new BrushStroke(108, 443, color(241, 178, 212), color(241, 178, 212), 2, 10, 3));
 brushStrokes.add(new BrushStroke(110, 444, color(222, 78, 157), color(222, 78, 157), 2, 10, 3));
 brushStrokes.add(new BrushStroke(112, 445, color(222, 78, 157), color(222, 78, 157), 2, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(62, 118, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(64, 119, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(66, 120, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(68, 121, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 122, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(72, 123, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(62, 118, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(64, 119, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(66, 120, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(68, 121, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 122, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(72, 123, color(0,80,168), color(0), 1, 10, 3));

 //blue square type 1
 brushStrokes.add(new BrushStroke(454, 157, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(456, 158, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(458, 159, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(460, 160, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(462, 161, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(464, 162, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(2, 166, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(4, 167, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(6, 168, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(8, 169, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(10, 170, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(12, 171, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(62, 118, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(64, 119, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(66, 120, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(68, 121, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 122, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(72, 123, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(37, 340, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(39, 341, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(41, 342, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(43, 343, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(45, 344, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(47, 345, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(17, 389, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(19, 390, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(21, 391, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(23, 392, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(25, 393, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(27, 394, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(73, 457, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(75, 458, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(77, 459, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(79, 460, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(81, 461, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(83, 462, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(87, 254, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(89, 255, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(91, 256, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(93, 257, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(95, 258, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(97, 259, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(62, 118, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(64, 119, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(66, 120, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(68, 121, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 122, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(72, 123, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(422, 375, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(424, 376, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(426, 377, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 378, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(420, 379, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(422, 380, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(420, 225, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(422, 226, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(424, 227, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(426, 228, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 229, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(430, 230, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(422, 375, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(424, 376, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(426, 377, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 378, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(420, 379, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(422, 380, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(426, 53, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 54, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(430, 55, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(432, 56, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(434, 57, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(436, 58, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(422, 375, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(424, 376, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(426, 377, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(428, 378, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(420, 379, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(422, 380, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(391, 42, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(393, 43, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(395, 44, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(397, 45, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(399, 46, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(401, 47, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(422, 375, color(0, 0, 47), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(424, 376, color(0, 0, 47), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(426, 377, color(0, 0, 47), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(428, 378, color(0, 0, 47), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(420, 379, color(0, 0, 47), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(422, 380, color(0, 0, 47), color(0), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(388, 67, color(0, 0, 47), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(390, 68, color(0, 0, 47), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(392, 69, color(0, 0, 47), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(394, 70, color(0, 0, 47), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(396, 71, color(0, 0, 47), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(398, 72, color(0, 0, 47), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(464, 64, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(465, 66, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(466, 68, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(467, 70, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(468, 72, color(0,80,168), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(469, 74, color(0,80,168), color(0), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(446, 88, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(447, 90, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(448, 92, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(449, 94, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(450, 96, color(0,80,168), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(451, 98, color(0,80,168), color(0), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(463, 188, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(464, 190, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(465, 192, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(466, 194, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(467, 196, color(0,80,168), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(468, 198, color(0,80,168), color(0), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(476, 338, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(477, 340, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(478, 342, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(479, 344, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(480, 346, color(0,80,168), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(481, 348, color(0,80,168), color(0), 3, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(441, 123, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(443, 124, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(445, 125, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(447, 126, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(449, 127, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(450, 128, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(60, 204, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(62, 205, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(64, 206, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(66, 207, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(68, 208, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 209, color(0,80,168), color(0), 1, 10, 3));
 
  //blue square type 1
 brushStrokes.add(new BrushStroke(448, 267, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(450, 268, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(452, 269, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(454, 270, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(456, 271, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(458, 272, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(138, 228, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(139, 230, color(0, 49, 102), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(140, 232, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(141, 234, color(0, 63, 132), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(142, 236, color(0,80,168), color(0), 3, 10, 3));
 brushStrokes.add(new BrushStroke(143, 238, color(0,80,168), color(0), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(128, 270, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(129, 272, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(130, 274, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(131, 276, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(132, 278, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(133, 280, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(122, 287, color(0, 49, 102), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(124, 288, color(0, 49, 102), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(126, 289, color(0, 63, 132), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(128, 290, color(0, 63, 132), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(130, 291, color(0,80,168), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(132, 292, color(0,80,168), color(112, 166, 206), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(70, 186, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(71, 189, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(72, 191, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(73, 193, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(74, 195, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(75, 197, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(167, 99, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(169, 100, color(0, 49, 102), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(171, 101, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(173, 102, color(0, 63, 132), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(175, 103, color(0,80,168), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(177, 104, color(0,80,168), color(0), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(26, 427, color(0, 49, 102), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(28, 428, color(0, 49, 102), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(30, 429, color(0, 63, 132), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(32, 430, color(0, 63, 132), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(34, 431, color(0,80,168), color(112, 166, 206), 1, 10, 3));
 brushStrokes.add(new BrushStroke(36, 432, color(0,80,168), color(112, 166, 206), 1, 10, 3));
 
 //blue square type 1
 brushStrokes.add(new BrushStroke(294, 20, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(295, 22, color(0, 49, 102), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(296, 24, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(297, 26, color(0, 63, 132), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(298, 28, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 brushStrokes.add(new BrushStroke(299, 30, color(0,80,168), color(112, 166, 206), 3, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(336, 17, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(338, 18, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(340, 19, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(342, 20, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(344, 21, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(346, 22, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(268, 17, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(270, 18, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(272, 19, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(274, 20, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(276, 21, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(278, 22, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(268, 17, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(270, 18, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(272, 19, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(274, 20, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(276, 21, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(278, 22, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 2
 brushStrokes.add(new BrushStroke(252, 297, color(108, 67, 139), color(108, 67, 139), 2, 10, 3));
 brushStrokes.add(new BrushStroke(254, 298, color(108, 67, 139), color(108, 67, 139), 2, 10, 3));
 brushStrokes.add(new BrushStroke(256, 299, color(128, 79, 164), color(128, 79, 164), 2, 10, 3));
 brushStrokes.add(new BrushStroke(258, 300, color(128, 79, 164), color(128, 79, 164), 2, 10, 3));
 brushStrokes.add(new BrushStroke(260, 301, color(163, 122, 192), color(163, 122, 192), 2, 10, 3));
 brushStrokes.add(new BrushStroke(262, 302, color(163, 122, 192), color(163, 122, 192), 2, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(449, 307, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(451, 308, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(453, 309, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(455, 310, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(457, 311, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(458, 312, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(371, 382, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(373, 383, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(375, 384, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(377, 385, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(379, 386, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(381, 387, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 3
 brushStrokes.add(new BrushStroke(387, 366, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(388, 368, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(389, 370, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(390, 372, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(391, 374, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 brushStrokes.add(new BrushStroke(392, 376, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 
 //purple square type 1
 brushStrokes.add(new BrushStroke(7, 356, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(9, 357, color(108, 67, 139), color(108, 67, 139), 1, 10, 3));
 brushStrokes.add(new BrushStroke(11, 358, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(13, 359, color(128, 79, 164), color(128, 79, 164), 1, 10, 3));
 brushStrokes.add(new BrushStroke(15, 360, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 brushStrokes.add(new BrushStroke(17, 361, color(163, 122, 192), color(163, 122, 192), 1, 10, 3));
 
 //purple square type 3
 brushStrokes.add(new BrushStroke(5, 341, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(6, 343, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(7, 345, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(8, 347, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(9, 349, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 brushStrokes.add(new BrushStroke(10, 351, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 
 //purple square type 3
 brushStrokes.add(new BrushStroke(32, 272, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(33, 274, color(108, 67, 139), color(108, 67, 139), 3, 10, 3));
 brushStrokes.add(new BrushStroke(34, 376, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(35, 378, color(128, 79, 164), color(128, 79, 164), 3, 10, 3));
 brushStrokes.add(new BrushStroke(36 380, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 brushStrokes.add(new BrushStroke(37, 382, color(163, 122, 192), color(163, 122, 192), 3, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(373, 272, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(375, 273, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(377, 274, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(379, 275, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(381, 276, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(383, 277, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(388, 202, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(390, 203, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(392, 204, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(394, 205, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(396, 206, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(398, 207, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(425, 178, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(427, 179, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(429, 180, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(431, 181, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(433, 182, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(435, 183, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(20, 237, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(22, 238, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(24, 239, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(26, 240, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(28, 241, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(30, 242, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(5, 281, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(7, 282, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(9, 283, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(11, 284, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(13, 285, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(15, 286, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(46, 110, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(48, 111, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(50, 112, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(52, 113, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(54, 114, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(56, 115, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(19, 144, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(21, 145, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(23, 146, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(25, 147, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(27, 148, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(29, 149, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(68, 342, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(70, 343, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(72, 344, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(74, 345, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(76, 346, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(78, 347, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(471, 108, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(473, 109, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(475, 110, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(477, 111, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(479, 112, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(581, 113, color(188, 15, 0), color(0), 1, 10, 3));
 
 //red and black brush stroke number 1 
 brushStrokes.add(new BrushStroke(461, 490, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(463, 491, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(465, 492, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(467, 493, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(469, 494, color(188, 15, 0), color(0), 1, 10, 3));
 brushStrokes.add(new BrushStroke(471, 495, color(188, 15, 0), color(0), 1, 10, 3));
 
 //bright red on side
  brushStrokes.add(new BrushStroke(413, 441, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(415, 442, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(417, 443, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(419, 444, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(421, 445, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(423, 446, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 
 //bright red on side
  brushStrokes.add(new BrushStroke(413, 441, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(415, 442, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(417, 443, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(419, 444, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(421, 445, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 brushStrokes.add(new BrushStroke(423, 446, color(235, 66, 1), color(235, 66, 1), 1, 10, 3));
 
 //bright red 3 on side
 brushStrokes.add(new BrushStroke(422, 462, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(423, 464, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(424, 466, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(425, 468, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(426, 470, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(427, 472, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 
 //bright red 3 on side
 brushStrokes.add(new BrushStroke(382, 228, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(383, 230, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(384, 232, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(385, 234, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(386, 236, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 brushStrokes.add(new BrushStroke(387, 238, color(235, 66, 1), color(235, 66, 1), 3, 10, 3));
 */ 
 


void stop() {
   a1.close(); 
   minim.stop() ;
   super.stop() ;
}



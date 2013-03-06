import ddf.minim.*;
Minim minim;
AudioPlayer a1; 

Renderer test;
Renderer test2;
Renderer test3; 
Renderer test4; 
Renderer test5; 
Renderer test6; 
Renderer test7;
Renderer test8;
Renderer test9; 
Renderer test10; 
Renderer test11; 
Renderer test12; 

color c;
color c1; 
color c2;
Integer b;
ArrayList<BrushStroke> brushStrokes = new ArrayList<BrushStroke>();
ArrayList<Integer> xCoor = new ArrayList<Integer>(); 
ArrayList<Integer> yCoor = new ArrayList<Integer>(); 
color[] colors = new color[50]; 
ArrayList<Integer> bezierTypes = new ArrayList<Integer>(); 
boolean finished = true;
boolean finished2 = true;
boolean finished3 = true;
boolean finished4 = true;
boolean finished5 = true;
boolean finished6 = true;
boolean finished7 = true;
boolean finished8 = true;
boolean finished9 = true;
boolean finished10 = true;
boolean finished11 = true;
boolean finished12 = true;
int count1 = 0; 
int count2 = 6; 
int count3 = 12;
int count4 = 18;
int count5 = 24;
int count6 = 30;
int count7 = 36; 
int count8 = 42; 
int count9 = 48;
int count10 = 54;
int count11 = 60;
int count12 = 66;
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
  test2 = new Renderer(brushStrokes.get(6)); 
  test3 = new Renderer(brushStrokes.get(12));
  test4 = new Renderer(brushStrokes.get(18)); 
  test5 = new Renderer(brushStrokes.get(24));
  test6 = new Renderer(brushStrokes.get(30)); 
  test7 = new Renderer(brushStrokes.get(36));
  test8 = new Renderer(brushStrokes.get(42)); 
  test9 = new Renderer(brushStrokes.get(48));
  test10 = new Renderer(brushStrokes.get(54)); 
  test11 = new Renderer(brushStrokes.get(60));
  test12 = new Renderer(brushStrokes.get(66)); 
  
    
}
 
 

void draw() {
  a1.play();
  if(finished)
  { 
      finished = false;
      
      if(count1 + 1 < brushStrokes.size())
      {
        println("finished 1 " + count1); 
        test.setBrushStroke(brushStrokes.get(count1));
        if((count1 + 1) % 6 == 0)
          count1 += 31; 
        else
          count1++;
      }
  }   
        
   finished = test.render();  
   if(finished2)
   { 
      finished2 = false;
      
      if(count2 + 1 < brushStrokes.size())
      {
        
        test2.setBrushStroke(brushStrokes.get(count2));
        if((count2 + 1) % 6 == 0)
          count2 += 31;
        else
         count2++;
      }
  }   
        
   finished2 = test2.render(); 
   
   if(finished3)
   { 
      finished3 = false;
      
      if(count3 + 1 < brushStrokes.size())
      {
        test3.setBrushStroke(brushStrokes.get(count3));
        if((count3 + 1) % 6 == 0)
          count3 += 31;
        else
         count3++;
      }
  }   
        
   finished3 = test3.render(); 
   
   if(finished4)
   { 
      finished4 = false;
      
      if(count4 + 1 < brushStrokes.size())
      {
        test4.setBrushStroke(brushStrokes.get(count4));
        if((count4 + 1) % 6 == 0)
          count4 += 31;
        else
         count4++;
      }
  }   
        
   finished4 = test4.render();
  
  if(finished5)
   { 
      finished5 = false;
      
      if(count5 + 1 < brushStrokes.size())
      {
        test5.setBrushStroke(brushStrokes.get(count5));
        if((count5 + 1) % 6 == 0)
          count5 += 31;
        else
         count5++;
      }
  }   
        
   finished5 = test5.render(); 
   
   if(finished6)
   { 
      finished6 = false;
      
      if(count6 + 1 < brushStrokes.size())
      {
        test6.setBrushStroke(brushStrokes.get(count6));
        if((count6 + 1) % 6 == 0)
          count6 += 31;
        else
         count6++;
      }
  }   
        
   finished6 = test6.render();
   
   
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
 //1
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 300, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 250, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 225, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 150, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 125, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 125, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 //20sec = 63.75 steps/sec
 
 //2
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 //3
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 
 //4
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 //5
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 23));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 
 
 
 
 //6
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 
 
 //mark 27 sec in
 //7
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 14, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 //mark 28.39
 //8
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 13, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 13, 3));
 
 
 
 
 //9
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 //mark 31 sec
 //10
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
}
 
 void populateBrushStroke2() {
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 //mark 32.42 sec
 //11
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 
 //12
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 
 //13
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 
 //14
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 20, 3));
 
 
 //15
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 40, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));
 
 //mark 39.27
 //16
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 25, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 5));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 5));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 5));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 5));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 //17
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 
 //18
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 }
 
 void populateBrushStroke3() { 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 
 //mark 43.48
 //19
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 12, 3));
 
 
 //20
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 15, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 15, 3));
 
 //mark 46
 //21
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //22
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
  getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //23
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 //mark 48.82
 //24
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 /*
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 */
 
 //mark 67.77
 //25
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));

 //mark 86.7 sec
 //26
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 50, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 /*
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 */

 //mark 105.64 sec
 //27
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 }
 
 void populateBrushStroke4() {
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 40, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 30, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 20, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 12, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 25, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 50, 3));
 
 
 //28
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //29
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
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
 
 
 //30
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //31
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //32
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //33
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //34
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //35
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //36
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //37
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //38
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //39
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //40
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //41
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
   
 //42
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //43
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //44
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //45
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //46
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //47
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //48
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //49
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //50
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //51
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //51
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //52
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //53
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //54
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //55
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //55
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //56
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //57
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //58
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 //59
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 //60
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //61
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //62
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //63
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //64
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //65
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //66
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //67
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //68
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //69
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //70
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //71
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //72
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //73
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //74
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //75
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //76
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //77
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 //78  
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //79
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //80
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //81
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //82
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //83
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //84
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //85
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //86
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //87
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));


 //88
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //89
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //90
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 
 //91
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //92
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //93
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //94
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //95
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //96
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 //97  
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //98
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //99
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //100
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //101
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //102
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //103
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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
 
 //104
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //105
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //106
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //107
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //108
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3)); 

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));
 
 
 //109
 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

 getXAndY();
 c = colors[((int)random(colors.length))];
 b = bezierTypes.get((int)random(bezierTypes.size()));
 brushStrokes.add(new BrushStroke(x, y, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 2, y + 1, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 4, y + 2, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 6, y + 3, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 8, y + 4, c, c, b, 10, 3));
 brushStrokes.add(new BrushStroke(x + 10, y + 5, c, c, b, 10, 3));

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

//20 + (((15*6)*14)/64) etc... = number of seconds past at that point

 
  Ember[] fire = new Ember[100];
  Ember spark;

 void setup() 
 { 
    size(800,400);
    background(0);
    for(int i = 0; i<100; i++)
    {
      fire[i] = new Ember(400,390);
    }
    frameRate(150);
    
 }  
 int x, y;
 void draw()   
 {
   fill(0,0,0,30);
   rect(0,0,800,400);

     for(int i = 0; i<100; i++)
     {
       fire[i].walk();
       fire[i].show();
     }
  
   
 }  
 class Ember   
 {
   float myX, myY;
   color myColor, color1, color2, colorRandom;
   color[] colorArray = new color[3];
 
   Ember(float x, float y)
   {
     if(mousePressed)
     {
       myX=mouseX;
       myY=mouseY;
     }
     myX = x;
     myY = y;
     myColor = color(255);
     color1 = color(255,0,0);
     color2 = color(0,0,255);
     colorArray[1] = color1;
     colorArray[2] = color2;
     colorArray[0] = myColor;
     colorRandom = colorArray[(int)(Math.random()*3)];
   }
   void show()
   {
     noStroke();
     
     fill(colorRandom);
     ellipse(myX, myY, 2, 2);
   }
   void walk()
   {
     myX = myX + (float)Math.random()*3-1.5;
     myY = myY + (float)Math.random()*-10;
   }
 
 }
 void mouseClicked()
 {
   for(int i = 0; i<100; i++)
    {
      fire[i] = new Ember(mouseX,mouseY);
    }
    for(int i = 0; i<100; i++)
     {
       fire[i].walk();
       fire[i].show();
   
     
   }
 }
    
 

 
  

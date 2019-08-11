


//Point class
class Point{
   float x,y;
   int label;
   
   Point(){
      x = random(width);
      y = random(height);
      
      if(x >= y){
         label = 1; 
      }
      else{
         label = -1; 
      }
   }
   
   void show(){
      if(label == 1){
          fill(255); 
      }
      else{
          fill(0); 
      }
      
      ellipse(x,y,4,4);
   }
} 


//Perceptron class

class Perceptron{
  
}


Point[] points = new Point[100];

void setup(){
  size(200,200);
  
  for(int i=0;i<points.length;i++){
     points[i] = new Point(); 
  }
  
  
}


void draw(){
   background(255);
   
   line(0,0,width,height);
   for(Point p : points){
     p.show();
   }
}

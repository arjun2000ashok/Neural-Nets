Point[] points = new Point[1000];
Perceptron brain;
int tI = 0;
void setup(){
  size(1200,500);
  
  for(int i=0;i<points.length;i++){
     points[i] = new Point(); 
  }
  
  brain = new Perceptron();
  
}


void draw(){
   background(255);
   stroke(0);
   line(0,0,width,height);
   for(Point p : points){
     p.show();
   }
   
   for(Point p : points){
     float[] inputs = {p.x,p.y};
     int target = p.label;
     int guess = brain.guess(inputs);
     if(guess == target){
        fill(0,255,0);
     }
     else{
        fill(255,0,0); 
     }
     noStroke();
     ellipse(p.x,p.y,8,8);
   }
   
   Point training = points[tI];
   float[] inputs = {training.x,training.y};
   brain.train(inputs,training.label);
   tI++;
   if(tI >= points.length){
    tI = 0; 
   }
   
}


//void mousePressed(){
//   for(Point p : points){
//     float[] inputs = {p.x,p.y};
//     int target = p.label;
//     brain.train(inputs,target);
//   }  
//}

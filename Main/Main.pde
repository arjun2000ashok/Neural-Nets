Point[] points = new Point[100];
Perceptron brain;
int tI = 0;
void setup(){
  size(500,500);
  
  for(int i=0;i<points.length;i++){
     points[i] = new Point(); 
  }
  
  brain = new Perceptron(3);
  
}


void draw(){
   background(255);
   stroke(0);
   
   Point p1 = new Point(-1,f(-1));
   Point p2 = new Point(1,f(1));

   line(p1.getCartesianX(),p1.getCartesianY(),p2.getCartesianX(),p2.getCartesianY());
   //the actual equation is drawn
   
   
   Point p3 = new Point(-1,brain.guessY(-1));
   Point p4 = new Point(1,brain.guessY(1));
   
   
   line(p3.getCartesianX(),p3.getCartesianY(),p4.getCartesianX(),p4.getCartesianY());

   
   
   
   
   for(Point p : points){
     p.show();
   }
   
   for(Point p : points){
     float[] inputs = {p.x,p.y,p.bias};
     int target = p.label;
     int guess = brain.guess(inputs);
     if(guess == target){
        fill(0,255,0);
     }
     else{
        fill(255,0,0); 
     }
     noStroke();
     ellipse(p.getCartesianX(),p.getCartesianY(),8,8);
   }
   
   Point training = points[tI];
   float[] inputs = {training.x,training.y,training.bias};
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

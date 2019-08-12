float f(float x){
   return x ; 
}


//Point class
class Point{
   float x,y;
   float bias = 1;
   int label;
   
   Point(float _x,float _y){
      this.x = _x;
      this.y = _y;
     
      if(y > f(x)){
         label = 1; 
      }
      else{
         label = -1; 
      }
   }
   
   Point(){
      x = random(-1,1);
      y = random(-1,1);
      if(y > f(x)){
         label = 1; 
      }
      else{
         label = -1; 
      }
   }
   
   float getCartesianX(){
      return map(x,-1,1,0,width); 
   }
   
   float getCartesianY(){
      return map(y,-1,1,height,0); 
   }
   
   void show(){
      if(label == 1){
          fill(255); 
      }
      else{
          fill(0); 
      }
      
      ellipse(getCartesianX(),getCartesianY(),16,16);
   }
} 

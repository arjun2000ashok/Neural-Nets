//Perceptron class

class Perceptron{
  float[] weights = new float[2];
  float learningRate = 0.2;
  
  Perceptron(){
    for(int i=0;i<weights.length;i++){
      weights[i] = random(-1,1);  
    }
  }
  
  int sign(float s){
    if(s >= 0){
       return 1; 
    }
    else{
       return -1;
    }
  }
  
  int guess(float[] inputs){
    float sum = 0;
    for(int i=0;i<weights.length;i++){
      sum += weights[i] * inputs[i];  
    }
    
    int output = sign(sum);
    return output;
  }
  
  void train(float[] inputs,int target){
    int guess = guess(inputs);
    int error = target - guess;
    
    for(int i=0;i<weights.length;i++){
       weights[i] += error * inputs[i] * learningRate; 
    }
  }
}

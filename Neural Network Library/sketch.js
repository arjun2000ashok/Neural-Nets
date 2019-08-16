function setup(){
    var nn = new NeuralNetwork(2,1,2);
    var inputs = [1,0];
    var targets = [1,0];
    
    nn.train(inputs,targets);
}




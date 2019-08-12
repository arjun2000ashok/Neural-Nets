var nn = new NeuralNetwork(3,1,1);
var inputs = [0,1,3];
let output = nn.feedForward(inputs);
console.log(output);
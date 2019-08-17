function setup(){
    var nn = new NeuralNetwork(2,2,1);

    let data = [
        {
            inputs : [0,0],
            targets : [0]
        },
        {
            inputs : [0,1],
            targets : [1]
        },
        {
            inputs : [1,0],
            targets : [1]
        },
        {
            inputs : [1,1],
            targets : [0]
        }
    ]
    
    for(var i = 0;i<100000;i++){
        let trainingData = random(data);
        nn.train(trainingData.inputs,trainingData.targets);
    }

    console.log(nn.feedForward([0,0]));
    console.log(nn.feedForward([0,1]));
    console.log(nn.feedForward([1,0]));
    console.log(nn.feedForward([1,1]));

}




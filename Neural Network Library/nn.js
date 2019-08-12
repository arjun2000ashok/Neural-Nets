function sigmoid(x){
    return 1 / (1 + Math.exp(-x));
}

class NeuralNetwork{

    constructor(input_nodes,hidden_nodes,output_nodes){
        this.input_nodes = input_nodes;
        this.hidden_nodes = hidden_nodes;
        this.output_nodes = output_nodes;
    
        this.weights_ih = new Matrix(this.hidden_nodes,this.input_nodes);
        this.weights_ho = new Matrix(this.output_nodes,this.hidden_nodes);
        this.weights_ih.randomize();
        this.weights_ho.randomize();

        this.bias_h = new Matrix(this.hidden_nodes,1);
        this.bias_o = new Matrix(this.output_nodes,1);
        this.bias_h.randomize();
        this.bias_o.randomize();
    }

    feedForward(inputArray){
        let inputMatrix = Matrix.fromArray(inputArray);        
        let hiddenValues = Matrix.multiply(this.weights_ih,inputMatrix);
        // console.table(hiddenValues.data);
        hiddenValues.add(this.bias_h);
        // console.table(hidden.data);
        hiddenValues.map(sigmoid);
            

        let outputMatrix = Matrix.multiply(this.weights_ho,hiddenValues);
        outputMatrix.add(this.bias_o);
        outputMatrix.map(sigmoid);
        return outputMatrix.toArray();
    }


}

   // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0; //version


    contract HelloWorld { // Defination of the contract
            //parameter of the HelloWorld 
            
       string public greeting; // contract creation 

        constructor() {
        
        // assign greeting to the string "Hello World"
            greeting = "Hello World";
    }
    
        // Getter function returns the greeting "Hello World"

        function createHelloWorld() public view returns (string memory) {
            return greeting; // returns "Hello World"
        }



    }

   

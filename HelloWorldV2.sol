   // SPDX-License-Identifier: GPL-3.0
   pragma solidity ^0.8.20; //version

   contract HelloWorld {
        //from the existing hello world function
         string public greeting;
         address public owner; // stores the public owner
  
  // Declaring an event
      event GreetingChanged(string oldGreeting, string updateGreeting);

        constructor() {
        //Assign greeting to the string "Hello World"
            greeting = "Hello World";
            owner = msg.sender; // deploy contract to owner
    }
      // adding the modifier to function 
            modifier updateOwner() {
                 require(msg.sender == owner, "is not the owner");
                   _;
            }
            
      //function to change the Greeting
         function setGreeting(string memory _updateGreeting) public updateOwner {
               string memory oldGreeting = greeting;
               greeting = _updateGreeting;
               emit GreetingChanged(oldGreeting, _updateGreeting);
         
         }

    //Event log declaration
      event Log(address indexed sender, string message);
      
      function test() public {
         emit Log(msg.sender, "Old Hello World");
         emit Log(msg.sender, "Hello New Owner");
      }

   }

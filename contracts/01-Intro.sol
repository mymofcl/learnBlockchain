//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;
contract Intro{
    uint public counter;
    constructor(){
        counter=0;
    }
    function Increment() public{
        counter++;
    }
    function Decrement()public{
        counter--;
    }
    
}
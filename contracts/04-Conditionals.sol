//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;
contract Conditionals{
    address  owner;
    constructor(){
        owner=  msg.sender;
    }
    function verifyOwner(address _owner) public view returns(string memory){
        if(owner == _owner){
            return "Welcome AKA!";
        }
        else{
            return "Get Lost!";
        }
    }

    function payETH(address _owner, address payable _to) payable public{
        if(owner==_owner){
            // payable(msg.sender).transfer(_amount);
            _to.transfer(msg.value);
        }
        else{
            revert();
        }
    }
}
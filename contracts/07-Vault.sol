//SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract Vault{
    address owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(owner == msg.sender, "User must be owner");
        _;
    }
}

contract Secret{
    string secretMessage;
    constructor(string memory _message){
        secretMessage = _message;
    }

    function getMessage() external view returns(string memory){
        return secretMessage;
    }
}

contract SecretMission is Vault{
    address secretAccount;
    constructor(string memory _secret){
        Secret secret = new Secret(_secret);
        secretAccount = address(secret);
        super;
    }
    function getSecretMessage() public view onlyOwner returns(string memory){
        return Secret(secretAccount).getMessage();
    }
}
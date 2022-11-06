//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Mapping{
    //Simple Mapping
    mapping(uint=>string) public idToName;
    mapping(string=>uint) public nameToId;

    function mapConfig(uint _id, string memory _name) public{
        idToName[_id]=_name;
        nameToId[_name]=_id;
    }

}
//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Loops{
    struct Student{
        uint id;
        string name;
    }

    Student[] public students;

    function addStudent(uint _id, string memory _name) public{
        students.push(Student(_id,_name));
    }
    function getLength() public view returns(uint){
        uint counter=0;
        for(uint i=0;i<students.length;i++){
            counter++;
        }
        return counter;
    }
}
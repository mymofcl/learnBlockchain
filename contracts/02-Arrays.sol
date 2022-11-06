//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;
contract Arrays{
    uint[] public uList;
    address[] public aList;
    string[] public sList;
    
    struct Student{
        address wallet;
        string name;
    }
    Student[] public students;

    function addUList(uint _value) public{
        uList.push(_value);
    }
    function addAList(address _value) public{
        aList.push(_value);
    }
    function addSList(string memory _value) public{
        sList.push(_value);
    }
    function addStudentList(address _address, string memory _name) public{
        students.push(Student(_address,_name));
    }



}
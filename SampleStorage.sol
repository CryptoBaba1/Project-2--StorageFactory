// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{

    uint256 public fNumber;

    struct People{

        uint256 fNumber;
        string name;
    }
    People[] public people;

    mapping(string => uint256) public nameFavNum;
    
    function store(uint256 _fNumber) public{
        fNumber=_fNumber;
    }

    function retrive() public view returns(uint256) {
        return fNumber*2;
    }

    function addPerson(string memory _name, uint256 _fNumber) public{
        people.push(People({fNumber: _fNumber, name: _name}));
        nameFavNum[_name]=_fNumber;
    }
}

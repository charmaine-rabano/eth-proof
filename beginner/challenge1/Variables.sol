// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/*
    Write a simple contract and declare four different types of variables. 
    Write get and set functions for each of these variables. 
    Return the value of the variable in the “set function”.
*/

contract Variables {
    uint uintVar;
    bool boolVar;
    address addressVar;
    string stringVar;

    function setUintVar(uint _uintVar) public {
        uintVar = _uintVar;
    }
    
    function setBoolVar(bool _boolVar) public {
        boolVar = _boolVar;
    }

    function setAddressVar(address _addressVar) public {
        addressVar = _addressVar;
    }

    function setStringVar(string memory _stringVar) public {
        stringVar = _stringVar;
    }

    function getUintVar() public view returns(uint) {
        return uintVar;
    }

    function getBoolVar() public view returns(bool) {
        return boolVar;
    }

    function getAddressVar() public view returns(address) {
        return addressVar;
    }

    function getStringVar() public view returns(string memory) {
        return stringVar;
    }

}

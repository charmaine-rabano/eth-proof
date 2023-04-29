// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
    Write a smart contract that employs view and pure functions
*/

contract ViewAndPure {

    uint number;

    // VIEW FUNCTION
    function getNumber() public view returns(uint) {
        return number;
    }

    // PURE FUNCTION
    function plusTwo(uint _given) public pure returns(uint) {
        return _given + 2;
    }
    
}

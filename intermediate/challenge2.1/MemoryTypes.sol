// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
    Write a smart contract that has both storage and memory types of variables in it.
*/

contract MemoryTypes {

    uint givenNumber;       // givenNumber is stored in Storage
    uint numberDoubled;     // numberDoubled is stored in Storage

    function setNumber(uint _number) public {   // _number is stored in Memory
        uint double = _number * 2;              // double is stored in Memory

        givenNumber = _number;
        numberDoubled = double;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/*
    Write a smart contract that uses global functions in the message context
*/

contract GlobalFunctions {

    function getValueSent() public payable returns(uint) {
        return msg.value;
    }

    function getSenderAddress() public view returns(address) {
        return msg.sender;
    }

    function getRemainingGas() public view returns(uint) {
        return gasleft();
    }
}

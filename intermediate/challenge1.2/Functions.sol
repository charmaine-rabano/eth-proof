// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/*
    Write a smart contract that uses view, pure, and payable functions. 
    Ensure that the functions are accessible within the contract and derived contracts as well.
*/

contract Functions {

    address payable public owner;
    uint balance;

    constructor() {
        owner = payable(msg.sender);
    }

    function setBalance(uint _balance) internal {
        balance = _balance;
    }

    // VIEW FUNCTION
    function getBalance() internal view returns(uint) {
        return balance;
    }

    // PURE FUNCTION
    function getDouble(uint amount) internal pure returns(uint) {
        return amount * 2;
    }

    // PAYABLE FUNCTION
    function deposit() public payable {}
}

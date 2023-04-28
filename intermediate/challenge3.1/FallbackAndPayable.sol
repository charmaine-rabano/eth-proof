// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
    Write a Smart contract that accepts ether and handles any unrecognized calls.
*/

contract FallbackAndPayable {
    
    // PAYABLE ADDRESS
    address payable public owner;

    // PAYABLE CONSTRUCTOR
    constructor(address _owner) payable {
        owner = payable(_owner);
    }

    // PAYABLE FUNCTION - accepts Ether into this contract
    function deposit() public payable {}

    // FALLBACK FUNCTION - handles unrecognized calls
    fallback() external {}

}

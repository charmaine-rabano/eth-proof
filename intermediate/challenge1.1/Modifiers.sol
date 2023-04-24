// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/*
    Write a smart contract that allows only the admin to access and call 
    all the functions of the contract.
*/

contract Modifiers {

	uint someNumber;
	address admin;

	constructor() {
		admin = msg.sender;
	}

	modifier isAdmin {
		require (admin == msg.sender, "Only the admin can access this.");
		_;
	}

	function setSomeNumber(uint _someNumber) public isAdmin {
		someNumber = _someNumber;
	}

	function getSomeNumber() public view isAdmin returns(uint) {
        return someNumber;
	}
}

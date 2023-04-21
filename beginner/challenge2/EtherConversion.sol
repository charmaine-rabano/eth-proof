// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/*
    Write a smart contract that takes some ether from the user. Find out its value in units of:
        wei
        ether
        gwei
*/

contract EtherConversion {
    uint etherInput;

    function setValueInEther(uint _etherInput) public {
        etherInput = _etherInput;
    }

    function getValueInWei() public view returns(uint) {
        return etherInput*(10**18);
    }

    function getValueInGwei() public view returns(uint) {
        return etherInput*(10**9);
    }

    function getValueInEther() public view returns(uint) {
        return etherInput;
    }
}

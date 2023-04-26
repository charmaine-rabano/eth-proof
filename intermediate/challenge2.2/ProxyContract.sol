// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
    Write a smart contract and make it upgradeable using a proxy contract.
*/

contract ImplementationContract {

    address public sender;
    uint public balance;

    function setValues(uint _balance) public {
        sender = msg.sender;
        balance = _balance;
    }

}

contract ProxyContract {

    address public sender;
    uint public balance;

    function setValues(address _contract, uint _balance) public {
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setValues(uint256)", _balance)
        );
    }
}

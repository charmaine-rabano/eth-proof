// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
    Write a smart contract that implements both an abstract contract and an interface
*/

// ABSTRACT CONTRACT
abstract contract AbstractContract {
    function getOne() public pure virtual returns(uint);
}

// CONTRACT DERIVED FROM ABSTRACT
contract DerivedAbstract is AbstractContract {
    function getOne() public pure override returns(uint) {
        return 1;
    }
}

// INTERFACE
interface IContract {
    function getTwo() external pure returns(uint);
}

// CONTRACT DERIVED FROM INTERFACE
contract DerivedInterface is IContract {
    function getTwo() external pure returns(uint) {
        return 2;
    }
}

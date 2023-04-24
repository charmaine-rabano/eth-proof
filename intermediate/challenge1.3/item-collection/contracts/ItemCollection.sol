//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    Write a smart contract that defines and triggers 3-4 events
    Index the events so that they can be easily searched
    Capture these events in your JavaScript code
*/

contract ItemCollection {

    mapping(address => string[]) private collection;

    event Buy(address indexed owner, string item);
    event Sell(address indexed owner, string item);
    event Gift(address indexed from, address indexed to, string item);

    function getIndex(address _account, string memory _item) private view returns(int) {
        int index = -1;
        string[] memory col = collection[_account];
    
        for (uint i=0; i < collection[_account].length; i++) {
            if (keccak256(abi.encodePacked(_item)) == keccak256(abi.encodePacked(col[i]))) {
                index = int(i);

                break;
            }
        }

        return index;
    }

    function removeItem(address _account, uint i) private {
        uint last = collection[_account].length - 1;
        collection[_account][i] = collection[_account][last];
        collection[_account].pop();
    }

    function buy(address _account, string memory _item) public {
        collection[_account].push(_item);
        emit Buy(_account, _item);
    }

    function sell(address _account, string memory _item) public {
        int index = getIndex(_account, _item);
        require(index >= 0, "You don't have this item.");
        removeItem(_account, uint(index));
        emit Sell(_account, _item);
    }

    function gift(address _from, address _to, string memory _item) public {
        int index = getIndex(_from, _item);
        require(index >= 0, "You don't have this item.");
        removeItem(_from, uint(index));
        collection[_to].push(_item);
        emit Gift(_from, _to, _item);
    }

    function getCollection(address _address) public view returns(string[] memory) {
        return collection[_address];
    } 
}

// Write a script to connect Metamask wallet

import React, { useState } from 'react';
import { ethers } from 'ethers';

function Connect() {

    const [accountAddress, setAccountAddress] = useState(null);
    const [accountBalance, setAccountBalance] = useState(null);

    function handleConnect() {
        if(window.ethereum){
            
            window.ethereum.request({method:'eth_requestAccounts'})
            .then(result => {
                setAccountAddress(result[0]);
                getAccountBalance(result[0]);
            })

        } else{
            alert("Please install the metamask extension.")
        }
    }

    function getAccountBalance(address) {
        window.ethereum.request({
            method:'eth_getBalance', 
            params: [address, 'latest']
        }).then(balance => {
            setAccountBalance(ethers.utils.formatEther(balance));
        })
    }

    return (
        <div>
            <button onClick={handleConnect}>Connect Metamask</button>
            <p>Address: {accountAddress}</p>
            <p>Balance: {accountBalance}</p>
        </div>
    )
}

export default Connect;

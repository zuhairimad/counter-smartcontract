// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Counter {
    uint public count = 0; 

    event Increment(uint value);
    event Decrement(uint value);

    function getCount() view public returns (uint){
        return count;
    }

    constructor() {
        count = 0;
    }

    function increment() public {
        count = count + 1;
        emit Increment(count);
    }
    function decrement() public {
        count = count - 1;
        emit Decrement(count);
    }

}

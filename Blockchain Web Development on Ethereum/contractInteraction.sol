pragma solidity ^0.6.6;

//contract
contract MyContract {
    //variable
    uint256 public myNumber;

    //constructor
    constructor() public {
        myNumber = 5;
    }

    //function
    function setNumber(uint256 _num) external {
        myNumber = _num;
    }
}
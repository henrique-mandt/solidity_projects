pragma solidity ^0.5.9; 

//contract
contract Bidder {
    //variables
    string public name = "Buffalo";
    uint public bidAmount;
    bool public  eligible;
    uint constant minBid = 1000;
    
    //functions
    function setName(string memory nm) public {
        name = nm;
        
    }
    
    function setBidAmount(uint x) public {
        bidAmount  = x;
    }
  
    function determineEligibility() public {
        if (bidAmount >= minBid ) eligible = true;
        else eligible = false;
    }
}
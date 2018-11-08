pragma solidity ^0.4.24;

import "./Ownable.sol";

contract Wads is Ownable {
    
    event NewTransaction(address indexed sender, uint256 ammount);
    
    function getCard() external payable {
        emit NewTransaction(msg.sender, msg.value);
    }
    
    function withdraw() external onlyOwner {
        owner.transfer(address(this).balance);
    }
    
}
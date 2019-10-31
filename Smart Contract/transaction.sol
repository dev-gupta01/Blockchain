pragma solidity ^0.5.1;

contract Transaction{
    event SenderLogger(address);
    event ValueLogger(uint);
    function () external payable{
        emit SenderLogger(msg.sender);
        emit ValueLogger(msg.value);
    }
}
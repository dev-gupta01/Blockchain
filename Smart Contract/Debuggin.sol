pragma solidity ^0.5.1;

contract Debugging{
    uint[] private vars;
    function assignment() public pure{
        uint val1=1;
        uint val2=2;
        assert(val1==val2);
    }
    function memoryAlloc() public pure{
        string memory mystring="test";
        assert(bytes(mystring).length==10);
    }
    function storageAlloc() public{
        vars.push(2);
        vars.push(3);
        assert(vars.length==4);
    }
}
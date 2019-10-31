pragma solidity ^0.5.1;

library IntExtended{
    function increment(uint self) public pure returns(uint){
        return (self+1);
    }
    function decrement(uint self) public pure returns(uint){
        return (self-1);
    }
    function incrementbyValue(uint self,uint val) public pure returns(uint){
        return (self+val);
    }
    function decrementbyValue(uint self,uint val) public pure returns(uint){
        return (self-val);
    }
}
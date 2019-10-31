pragma solidity ^0.5.1;
import "browser/library.sol";

contract TestLibrary{
    using IntExtended for uint;
    function testIncrement(uint base) public pure returns(uint){
        return base.increment();
    }
    function testDecrement(uint base) public pure returns(uint){
        return base.decrement();
    }
    function testIncrementbyValue(uint base,uint value) public pure returns(uint){
        return base.incrementbyValue(value);
    }
    function testDecrementbyValue(uint base,uint value) public pure returns(uint){
        return base.decrementbyValue(value);
    }
}
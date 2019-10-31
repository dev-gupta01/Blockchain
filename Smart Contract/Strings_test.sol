pragma solidity ^0.5.1;
import "browser/Strings.sol";

contract Test{
    using String for string;
    function testConcat(string memory s1,string memory s2) public pure returns(string memory){
        return s1.concat(s2);
    }
    
    function teststringpos(string memory s1,string memory s2) public pure returns(int){
        return s1.stringpos(s2);
    }
}
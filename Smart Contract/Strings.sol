pragma solidity ^0.5.1;
library String{
    function concat(string memory s1,string memory s2) internal pure returns(string memory){
        bytes memory b1=bytes(s1);
        bytes memory b2=bytes(s2);
        string memory tmp=new string(b1.length+b2.length);
        bytes memory concat_string=bytes(tmp);
        uint i;
        uint j;
        for(i=0;i<b1.length;i++)
            concat_string[j++]=b1[i];
        for(i=0;i<b2.length;i++)
            concat_string[j++]=b2[i];
        return string(concat_string);
    }
    
    function stringpos(string memory s1,string memory s2) internal pure returns(int){
        bytes memory b1=bytes(s1);
        bytes memory b2=bytes(s2);
        assert(b2.length==1);
        for(uint i=0;i<b1.length;i++){
            if(b1[i]==b2[0]){
                return int(i);
            }
        }
        return -1;
    }
}
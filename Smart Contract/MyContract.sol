pragma solidity ^0.5.1;
interface Regulator{
    function loan() external view returns(bool);
    function checkValue(uint amt) external view returns(bool);
    
}
contract Bank is Regulator{
    uint private value;
    address private owner;
    modifier ownerfunc{
        require (owner==msg.sender,"Not actual account");
        _;
    }
    constructor(uint amt) public{
        value=amt;
        owner=msg.sender;
    }
    function deposit(uint amt) public ownerfunc{
        value+=amt;
    }
    function withdraw(uint amt) public ownerfunc{
        if(checkValue(amt)){
            value-=amt;
        }
    }
    function balance() public view returns(uint){
        return value;
    }
    function checkValue(uint amt) public view returns(bool){
        return amt<=value;
    }
    function loan() public view returns(bool){
        return value>0;
    }
    function getOwner() public view returns(address){
        return owner;
    }
}
contract MyContract is Bank(10){
    bytes32 private name;
    uint private age;
    //Bank B=new Bank(10);
    function setName(bytes32 newName) public{
        name=newName;
    }
    function getName() public view returns(bytes32){
        return name;
    }
    function setAge(uint newAge) public{
        age=newAge;
    }
    function getAge() public view returns(uint){
        return age;
    }
}

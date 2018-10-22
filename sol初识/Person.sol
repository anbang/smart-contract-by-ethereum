pragma solidity ^0.4.15;
/* 
    pargma  :版本声明
    silidity:开发语言
    0.4.21:合约版本，0.4代表主版本，21表示BUG升级版
 */
 
contract Person {
    uint _age;
    address _owner;

    function Person() public{
        _age = 18;
        _owner = msg.sender;
    }

    //set Height
    function setAge(uint age) public{
        _age  = age;
    }

    function age() public view returns(uint) {
        return _age;
    }

    function owner() public view returns(address){
        return _owner;
    }
    
    function kill() public view{
        if(_owner==msg.sender){
            //析构函数
            selfdestruct(_owner);
        }
    }
}
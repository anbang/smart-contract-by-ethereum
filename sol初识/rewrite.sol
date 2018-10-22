pragma solidity ^0.4.15;

contract Sex {
    uint _sex;//1雌 2雄
    function Sex () public{
        _sex = 1;
    }
    function sex()public view returns (uint){
        return _sex;
    }
}

//合约继承的重写
contract Dog is Sex {
    //默认继承了sex  1;
    uint public sex = 2;//重写为了2，不再是继承的1
}
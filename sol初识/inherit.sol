pragma solidity ^0.4.15;
contract Animal{
    uint public _age=2;//会被继承
    uint internal _height =12;
    uint private _balance=10;

    //会被继承
    function testPub() public view returns(uint){
        return 11;
    }
    //外部不可见
    function testInter() internal view returns(uint){
        return 22;
    }
    
    //外部不可见
    function testPriv() private view returns(uint){
        return 33;
    }
}

contract Sex {
    uint _sex;//1雌 2雄
    function Sex () public{
        _sex = 1;
    }
    function sex()public view returns (uint){
        return _sex;
    }
}
/* 
继承规则：只能继承：
    1、public类型的函数；
    2、public和internal类型的属性；
注：public类型的属性也可以看成public类型的函数
 */

//合约多继承
contract Dog is Animal,Sex {
    function testHeight()public view returns (uint){
        return _height;
    }
    //这个不能执行，会报错的
    // function testBalance()public view returns (uint){
    //     return _balance;
    // }

//继承了 _age / testHeight / testPub
}
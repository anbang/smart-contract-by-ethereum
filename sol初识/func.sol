pragma solidity ^0.4.15;
//不管属性还是方法，只有是public类型才可以通过合约地址进行访问，合约内部的this是当前合约地址，不能访问public以外的函数；

//public > internal > private
//方法默认是 public
//internal和private不能通过指针访问，哪怕内部通过this访问都会报错， 在合约内部访问，直接运行函数即可；
//this只能访问public类型函数,[uint public _level = 11;//公共的]这种的也可以通过this访问
contract Func{
    //执行后外部可见，因为默认是public，
    //编辑器可能会提示需要补全，不写也可以部署；
    function height() view returns(uint){
        return 180;
    }
    //外部可见
    function weight() public view returns(uint){
        return 70;
    }

    //外部不可见
    function age() internal view returns(uint){
        return 23;
    }
    
    //外部不可见
    function balance() private view returns(uint){
        return 1500;
    }

    function test() public view returns(uint){
        return (age()*balance());
    }
}
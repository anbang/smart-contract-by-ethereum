pragma solidity ^0.4.15;

//public > internal > private
//属性默认是internal类型，
//internal 和 private 都不能被外部访 问，当属性为public时候，会隐式生成一个和属性名相同并且返回值就是当前属性的get函数；
//无论属性是什么权限的，都可以被方法 return 出去
contract Prop{ 
    uint _age;//默认的类型是internal
    uint internal _height =12;//内部的
    uint private _balance=10;//私有的

    /* 
    相当于隐式的写下面函数，但是显示写下面函数，会被覆盖掉,
    如果上方函数写了 _level , 下方不能用uint再写相同的 变量名了，会报错；
     */
    uint public _level = 11;//公共的
    function _level()public view returns(uint){
        //本函数相当于 uint public _level = 11; 但是会覆盖掉它
        //height,_balance虽然是内部和私有的，但是可以被return；
        //因为return出的是数据，只要_height再函数内可以访问，都可以转换成正确数据
        return (_height+_balance);

    }
}
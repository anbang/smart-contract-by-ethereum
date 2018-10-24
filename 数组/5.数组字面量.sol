pragma solidity ^0.4.15;
contract Test1{
    //参数是uint类型，即 uint256类型
    function g(uint[3] _data)public{
        //todo something
    }
    function f()public{
        // g([1,2,3]);//[1,2,3]是uint8
        g([uint(1),2,3]);//这样就可以转为uint256了；
    }

    function z() public {
        //memory固定长度的数组不可直接赋值给 memory 类型的不数组 
        // uint[] memory x = [uint(1), 3, 4];

        //函数内部中：memory固定长度的数组不可直接赋值给可变数组，再函数外部可以
        // uint[] storage x = [uint(1), 3, 4];
        //也就是函数内部，memory固定长度的数组不可以赋值给可变合不可变数组

        //正确的用法
        // uint[3] memory y = [uint(1),2,3];//memory固定长度的数组 赋值给同样的 memory是可以的
    }
}
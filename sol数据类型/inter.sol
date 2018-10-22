pragma solidity ^0.4.15;

/* 
uint8 uint16 uint24  ... uint256
int8  int16  int24   ... int256

uint 等价于  uint256
int  等价于  int256
 
支持  
    >= > == != < <=

 */

//int类型需要注意位数；超过储存位数就有异常,储存不了等
contract Test{
    uint8 _a;
    function Test(uint8 a)public{
        _a = a;
    }
    //传0-255都可以，但是256就不能传了
    function setA(uint8 a)public{
        _a = a;
    }
    function a()public view returns(uint8){
        return _a;
    }
}
//比较 >= > == != < <=

//位运算
contract Test2{
    uint8 _a = 2;// 0000 0010
    uint8 _b = 8;// 0000 1000
    function test1() public view returns(uint8){
        return _a & _b;// 0000 0000 => 0 有一个为假值，取假值；
    } 
    function test2() public view returns(uint8){
        return _a | _b;// 0000 1010 => 10 有一个为真值，取真值；
    } 
    function test3() public view returns(uint8){
        return _a ^ _b;// 0000 1010 => 10  有一个为真值，取真值；2个都为1，则取值是0；异或与或有区别
    } 
    function test4() public view returns(uint8){
        return ~_a;// 1111 1101
        // 128+64+32+16  +  8+4+0+1
    } 
}

//运算 + - * / %
contract Test3{
    int _a = 8;
    int _b = 5;
    function test1()public view returns(int){
        return _a+_b;
    }
    function test2()public view returns(int){
        return _a-_b;
    }
    function test3()public view returns(int){
        return _a*_b;
    }
    function test4()public view returns(int){
        return _a/_b;
    }
    function test5()public view returns(int){
        return _a%_b;
    }
}

// 次方** 左移<< 右移>>  */
contract Test4{
    function test1() public view returns(int8){
        return 3 ** 2;//3的2次方 => 9
    }
    function test2() public view returns(int8){
        return 3<<2;
        //3 - 0000 0011
        //b=2 向左移动2位
        // 0000 1100  =>12
    }
    function test3() public view returns(int8){
        return 3>>2;
        //3 - 0000 0011
        //b=2 向右移动2位
        // 0000 0000  =>0
    }
}
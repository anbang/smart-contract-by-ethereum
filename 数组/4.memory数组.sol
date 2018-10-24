pragma solidity ^0.4.15;
contract Test1{
    /* 
    memory类型的数组:长度不可修改
    */
    function memoryAry(uint len)public{
        uint[] memory a=new uint[](7);
        bytes memory b=new bytes(len);
        // 在这段代码中 a.length == 7 、b.length == len
        a[6]=8;
        // a.length=100;

        b[0]=0x6c;
    }
}
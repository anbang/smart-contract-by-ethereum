pragma solidity ^0.4.15;
//Test1证明：固定字节数组的长度是由声明的bytesI后面的I决定的，和值本身无关
//Test2证明：固定大小数组之间转换，向下转，会截取数组；向上转会后面补00凑够位子；
contract Test1{
    bytes1 public b1 = 0x6c;
    bytes2 public b2 = 0x6c;
    bytes3 public b3 = 0x6c;
    bytes5 public b5 = 0x6c;
    bytes10 public b10 = 0x6c;
    bytes16 public b16 = 0x6c;
    bytes32 public b32 = 0x6c;
    function b1Length()public view returns(uint){
        return b1.length;//1
    }
    function b2Length()public view returns(uint){
        return b2.length;//2
    }
    function b3Length()public view returns(uint){
        return b3.length;//3
    }
    function b5Length()public view returns(uint){
        return b5.length;//5
    }
    function b10Length()public view returns(uint){
        return b10.length;//10
    }
    function b16Length()public view returns(uint){
        return b16.length;//16
    }
    function b32Length()public view returns(uint){
        return b32.length;//32
    }
}
contract Test2{
    bytes9 public b9 = 0x283764738343233234;
    function b9ToBytes2()public view returns(bytes2){
        return bytes2(b9);//0x2837
    }
    function b9ToBytes32()public view returns(bytes32){
        return bytes32(b9);//0x2837647383432332340000000000000000000000000000000000000000000000
    }
}
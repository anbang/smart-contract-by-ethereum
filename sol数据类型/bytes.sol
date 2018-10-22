pragma solidity ^0.4.15;
contract Test{
    bytes public b = new bytes(1);

    function bLength()public view returns(uint){
        return b.length;
    }

    function setLeng(uint len)public {
        b.length  = len;
    }

    function setIndexByte(byte data,uint index)public{
        b[index] = data;
    }
    function pushByte(byte data)public{
        b.push(data);
    }
    function clearBBytes()public{
        // b.length = 0;//通过length清空
        delete b;//删除清空
    }
}
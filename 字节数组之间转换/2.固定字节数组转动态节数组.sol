pragma solidity ^0.4.15;
/* 
1、toBytesError证明，固定字节数组不能直接转为动态字节数组；
 */
contract Test1{
    bytes9 public b9 = 0x283764738343233234;
    // function toBytesError() public returns(bytes){
    //     return bytes(b9);// not allowed 不能直接转换；
    // }

    //下面是正确的方式,for循环实现
    function toBytes() public returns(bytes){
        bytes memory b = new bytes(b9.length);
        for(uint i=0;i<b.length;i++){
            b[i]=b9[i];
        }
        return b;//"bytes: 0x283764738343233234"
    }
}
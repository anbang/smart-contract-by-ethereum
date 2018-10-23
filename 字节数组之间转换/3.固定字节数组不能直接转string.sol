pragma solidity ^0.4.15;
/* 
1、toStringError 证明，固定字节数组不能直接转为string；
 */
contract Test1{
    bytes9 public b9 = 0x283764738343233234;
    function toStringError() public returns(string){
        return string(b9);// not allowed 不能直接转换；
    }
}
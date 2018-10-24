pragma solidity ^0.4.15;
contract Test1{
    /* 
    storage类型的数组
    对于storage类型的数组，数组里面可以存放任意类型的值
     */
    uint[2][3]ary1 = [[1,2],[3,4],[5,6]];//不可变的二维数组
    function aryLen()public view returns(uint){
        return ary1.length;//3
    }
    uint[2][]ary2 = new uint[2][](0);//可变的二维数组
    function pushNum()public {
        ary2.push([2,3]);//结果是  [[2,3]]
    }
}
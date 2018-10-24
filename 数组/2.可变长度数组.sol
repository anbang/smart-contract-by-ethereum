pragma solidity ^0.4.15;

//转换
contract Test1{
    uint[] Ary = [1,2,3,4,5];
    
    //求和
    function plus()public view returns(uint){
        uint tempNum= 0;
        for(uint i=0;i<Ary.length;i++){
            tempNum+=Ary[i];
        }
        return tempNum;//没有修改是15，修改后是114
    }
    //修改内容，说明固定长度数组的内容可以修改
    function setNum()public {
        Ary[0]=100;//修改后，求和是114；
    }

    //长度不可修改
    function setLength()public {
        Ary.length = 2;
    }
    function pushNum()public {
        Ary.push(9);
    }
}

contract Create2{
    //这是构造函数的创建方式
    uint[] Ary = new uint[](5);
    function Create2()public{
        for(uint i=0;i<Ary.length;i++){
            Ary[i]=i+1;
        }
    }

    //求和
    function plus()public view returns(uint){
        uint tempNum= 0;
        for(uint i=0;i<Ary.length;i++){
            tempNum+=Ary[i];
        }
        return tempNum;//没有修改是15，修改后是114
    }

    //修改内容，说明固定长度数组的内容可以修改
    function setNum()public {
        Ary[0]=100;//修改后，求和是114；
    }

    //长度不可修改
    function setLength()public {
        Ary.length = 2;
    }
    
    function pushNum()public {
        Ary.push(10);
    }
}
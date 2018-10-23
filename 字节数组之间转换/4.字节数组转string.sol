pragma solidity ^0.4.15;

//转换
contract Test1{
    bytes public name =new bytes(2);
    
    bytes2 public b2 = 0x6c6c;
    bytes public c9 = new bytes(b2.length);
    function Test1() public {
        //赋值name
        name[0]=0x6c;
        name[1]=0x6c;

        //转换b9为动态字节数组
        for(uint i=0;i<b2.length;i++){
            c9[i]=b2[i];
        }
    }

    function nameToString()public returns(string){
        return string(name);
    }
    function b9ToString()public returns(string){
        return string(c9);
    }
}

//通用方法，固定字节数组转为string
/* 
    1.固定转为动态字节数组(注意长度 )
    2.动态转为string；
    3.解决32的
*/
contract toString{
    // 0x6c69
    function bytes32ToString(bytes32 arg) public view returns(string){

        //固定大小 -> 动态大小
        bytes memory tempString = new bytes(32);
        for(uint i=0;i<32;i++){
            if(!(arg[i]==0x00)){
                tempString[i]=arg[i];
            }else{
                break;
            }
        }
        //上面只是为了确定 bytesString 的长度
        bytes memory bytesString = new bytes(i);
        for(uint j=0;j<i;j++){
            bytesString[j]=tempString[j];
        }
        return string(bytesString);
    }

    //下面是调试时的测试数据
    function seeBytes32(bytes32 arg) public view returns(bytes32){
        if(arg[0]==0x6c){
            return arg[0];
        }else{
            return arg[1];
        }
    }
}
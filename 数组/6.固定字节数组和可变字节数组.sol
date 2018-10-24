pragma solidity ^0.4.15;
contract C {
    bytes9 a = 0x6c697975656368756e;//长度不可变，内容可变；
    byte[9] aa = [byte(0x6c),0x69,0x79,0x75,0x65,0x63,0x68,0x75,0x6e];// 长度不可变，但内容可以修改；
    
    // bytes ccc =new bytes(10);
    byte[] cc = new byte[](10);//这2方法，完全等价

    function setAIndex0Byte() public {
        // 错误，不可修改
        // a[0] = 0x89;
    }
    
    function setAAIndex0Byte() public {
        aa[0] = 0x89;
    }
    
    function setCC() public {
        
        for(uint i = 0; i < a.length; i++) {
            cc.push(a[i]);
        }
    }
       
}
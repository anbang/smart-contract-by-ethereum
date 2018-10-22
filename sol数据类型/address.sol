pragma solidity ^0.4.15;

/* 
0xc608d3853748c8E178A0803Bc6061C466B2F3c57
16进制 转为2进制，每个数字代表4位
0x 45 ->  0b 0100 0101

16进制中合法的 0 1 2 3 4 5 6 7 8 9 A B C D E F  ,F代表15;

0xc608d3853748c8E178A0803Bc6061C466B2F3c57 是40位（0x不算），转二进制是 40*4 = 160位；可以用int160来储存

 */
contract Test{
    address _owner;
    uint160 _ownerUint;
    function Test()public{
        _owner = 0xc608d3853748c8E178A0803Bc6061C466B2F3c57;
        _ownerUint = 1130577004608080332167727263339560069909353282647;
    }
    function owner()public view returns (address){
        return _owner;
    }
    function ownerUint160()public view returns (uint160){
        return uint160(_owner);//1130577004608080332167727263339560069909353282647
    }
    function ownerUintToAddress()public view returns (address){
        return address(_ownerUint);//0xc608d3853748c8E178A0803Bc6061C466B2F3c57
    }
} 

//谁部署合约，就吧谁谁的地址拿出来
contract Test1{
    address public _owner;
    int public _num;
    function Test1() public{
        _owner = msg.sender;//合约部署时候赋值
        _num=10;
    }
    function msgSenderAds()public view returns(address) {
        return msg.sender;
    }
    function contractAds()public view returns(address) {
        return this;//this是当前的合约对象的指针；直接返回是当前合约对象的地址
    }
    function add()public {
        //只有部署合约的地址才能进行数值操作
        //0xc608d3853748c8E178A0803Bc6061C466B2F3c57
        if(_owner==msg.sender){
            _num+=10;
        }
    }
}

/* 
合约的运算,比较的是转成整数后的大小
*/
contract Test2{
    address ads1;
    address ads2;
    function Test2()public {
        ads1 = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        ads2 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
    }
    function ads1Num()public view returns(uint160){
        return uint160(ads1);// 1154414090619811796818182302139415280051214250812 大
    }
    function ads2Num()public view returns(uint160){
        return uint160(ads2);// 116727156174188091019688739584752390716576765452 小
    }
    function test1()public view returns(bool){
        return ads1 >= ads2;//true
    }
    function test2()public view returns(bool){
        return ads1 > ads2;//true
    }
    function test3()public view returns(bool){
        return ads1 == ads2;//fasle
    }
    function test4()public view returns(bool){
        return ads1 != ads2;//true
    }
    function test5()public view returns(bool){
        return ads1 <= ads2;//fasle
    }
    function test6()public view returns(bool){
        return ads1 < ads2;//fasle
    }

}

/* 查询余额 */
contract Test3{
    function balance (address ads)public view returns(uint){
        return ads.balance;
    }
    function ownerBalance ()public view returns(uint){
        return msg.sender.balance;
    }
}

//转账transfer
contract TestTransfer{
    uint public _msgVal;
    //涉及到转账的操作都需要加 payable
    function send()public payable {
        address acc = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        _msgVal  = msg.value;
        acc.transfer(msg.value);//从调取合约的账户中，转value的虚拟币到acc
    }
    function accBalance()public view returns (uint){
        address acc = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        return acc.balance;
    }
    function ownerBalance()public view returns (uint){
        return msg.sender.balance;
    }
}

//转账 send
contract TestSend{
    uint public _msgVal;
    //涉及到转账的操作都需要加 payable
    function send()public payable returns(bool){
        address acc = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        _msgVal  = msg.value;
        return acc.send(msg.value);//如果gas不够会失败，不抛异常，返回false，想对来说transfer更安全
    }
    function accBalance()public view returns (uint){
        address acc = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        return acc.balance;
    }
    function ownerBalance()public view returns (uint){
        return msg.sender.balance; 
    }
}
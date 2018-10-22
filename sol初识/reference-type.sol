pragma solidity ^0.4.15;
/* 
值类型
    - boolean
    - integer
    - address
    - fixed byte arrats
    - 有理数合整型
    - 枚举类型
    - 函数
引用类型
    - 不定长字节数组
    - 字符串
    - 数组
    - 结构体
 */
contract Person {
    string _name;
    function Person(string name) public{
        _name = name;
    }
    function setAge() public{
        modify(_name);
    }
    /* 
        memory storage  
        memory  - 值传递
        storage - 引用传递
            - 如果是storage传值，函数必须为internal或者private
     */
    function modify(string storage name) internal{
        bytes (name)[0] = "Z";
    }

    function name() public view returns (string){
        return _name;
    }

}
# smart-contract-by-ethereum

前面是知识点，后面是文件

## solidity初识
- 合约DEMO（`sol初识/Person.sol`） 
- 合约的属性访问权限public、internal、private(`sol初识/property.sol`)
- 合约的方法访问权限(`sol初识/func.sol`)
- 合约多继承（`sol初识/inherit.sol`）
- 重写(`sol初识/rewrite.sol`)
- 值类型和引用类型（`sol初识/reference-type.sol`）

## solidity数据类型
- bool(`sol数据类型/bool.sol`)
- int(`sol数据类型/inter.sol`)
- address(`sol数据类型/address.sol`)
- bytes
    - bytes1-32声明固定大小的字节数组，可读不可写（字节不可修改，长度不可修改）;
    - bytes 长度和内容均可重写;
        - bytes name  = new bytes(1);

## 字节数组之间的转换
- 固定字节数组 之间的转换
- 固定字节数组 转 动态字节数组
- 固定字节数组 不能直接转 string
- 字节数组 转 string
    - 本身是动态字节数组可以直接转
    - 固定字节数组需要先转为动态字节数组，然后再转string
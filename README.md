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
    - bytes1-32声明固定大小的字节数组，可读不可写（字节 不可修改，长度不可修改）;
    - bytes 长度和内容均可重写;
        - bytes name  = new bytes(1);
- 枚举Enums(`sol数据类型/enums.sol`)
- Mappings
    - `mapping(address => uint) public balances;`

## 字节数组之间的转换
- 固定字节数组 之间的转换(`字节数组之间转换/1.固定大小数组之间转换.sol`)
- 固定字节数组 转 动态字节数组(`字节数组之间转换/2.固定字节数组转动态节数组.sol`)
- 固定字节数组 不能直接转 string(`字节数组之间转换/3.固定字节数组不能直接转string.sol`)
- 字节数组 转 string(`字节数组之间转换/4.字节数组转string.sol`)
    - 动态字节数组转换
    - 固定字节数组需先转动态字节数组，再转string

## 数组（Array）
- 固定长度数组(`数组/1.固定长度数组.sol`)
    - `uint[5] Ary = [1,2,3,4,5];`
    - 固定长度数组：长度不可变，内容可变
    - 固定长度字节：长度不可变，内容也不可变
    - 固定长度数组，我们可以通过索引修改里面的值，但是不可修改数组长度以及不可通过push添加存储内容
- 可变长度数组(`数组/2.可变长度数组.sol`)
    - `uint[] Ary = [1,2,3,4,5];`
    - `uint[] Ary = new uint[](5);`
- 二维数组（`数组/3.二维数组.sol`）
    - `uint[2][3]ary1 = [[1,2],[3,4],[5,6]];//不可变的二维数组`
    - `uint[2][]ary2 = new uint[2][](0);//可变的二维数组`
- memory arrays的创建
    - `uint[] memory a=new uint[](7);`
    -  memory类型的数组:长度不可修改
- 数组字面量，内联数组
    - memory类型的固定长度的数组不可直接赋值给storage/memory类型的可变数组 
- bytes0 ～ bytes32、bytes与byte[]对比
    - 创建可变字节数组除了可以通过`bytes b = new bytes(len)`来创建外，我们亦可以通过`byte[] b`来进行声明。
    - `byte[] b`创建是，长度不可变，但是内容可以修改；
    ```
        bytes9 a = 0x6c697975656368756e;//长度不可变，内容可变；
        byte[9] aa = [byte(0x6c),0x69,0x79,0x75,0x65,0x63,0x68,0x75,0x6e];// 长度不可变，但内容可以修改；

        // bytes ccc =new bytes(10);
        byte[] cc = new byte[](10);//cc和ccc这2方法，完全等价
    ```

### 特殊变量和函数

`sol初识/units.sol` 和 `sol初识/variables.sol`

另外有一些特殊的变量和函数存在于全局的命名空间以提供区块相关信息。

- 区块和交易属性
```
block.blockhash(uint blockNumber) returns (bytes32): 某个区块的区块链hash值
block.coinbase (address): 当前区块的挖矿地址
block.difficulty (uint): 当前区块的难度
block.gaslimit (uint): 当前区块的gaslimit
block.number (uint): 当前区块编号
block.timestamp (uint): 当前区块时间戳
msg.data (bytes): 参数
msg.gas (uint): 剩余的gas
msg.sender (address): 当前发送消息的地址
msg.sig (bytes4): 方法ID
msg.value (uint): 伴随消息附带的以太币数量
now (uint): 时间戳，等价于block.timestamp (uint)
tx.gasprice (uint): 交易的gas单价
tx.origin (address):交易发送地址
```
- 错误处理
```
assert(bool condition)：不满足条件，将抛出异常
require(bool condition)：不满足条件，将抛出异常
revert() 抛出异常

在Solidity 0.4.10版本之前，使用throw来处理异常。如下所示：

contract HasAnOwner {
    address owner;
    function useSuperPowers(){ 
        if (msg.sender != owner) { 
            throw; 
        }
    }
}

在Solidity 0.4.10版本之后，我们通常如下使用：

if(msg.sender != owner) { revert(); }
assert(msg.sender == owner);
require(msg.sender == owner);
```

## 元组

元组，返回多个值，并且值与值之间的类型可以不相同;

元组返回的值，不能直接赋值给数组的某个值
pragma solidity ^0.4.16;
contract MappingExample {
    mapping(address => uint) public balances;

    function update(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
}

contract MappingUser {
    function f(uint num) public returns (uint) {
        MappingExample m = new MappingExample();
        m.update(num);
        return m.balances(this);
    }
}
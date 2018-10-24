pragma solidity ^0.4.23;
contract Token{
    uint256 INITIAL_SUPPLY = 666666;
    mapping(address=>uint256)balances;

    //构造函数会使调用者有666666个token
    function Token()public{
        balances[msg.sender] = INITIAL_SUPPLY;
    }

    //转账到指定地址
    function transfer(address _to,uint256 _amount)public{
        assert(balances[msg.sender] >= _amount);//检测余额
        balances[msg.sender]-=_amount;
        balances[_to]+=_amount;
    }

    //查看指定地址的余额
    function balanceOf(address _owner)public view returns(uint) {
        return balances[_owner];
    }
}
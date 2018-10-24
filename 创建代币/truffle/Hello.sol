pragma solidity ^0.4.23;
contract Hello{
    //加pure contract.test()调用,直接执行函数，或者contract.test.call()
    function test()public pure returns(string) {
        return "Hello World";
    }

    /* 
    加public contract.test1()调用,直接执行函数，或者contract.test1.call()
    以前public这种方式，直接contract.test1()调用会返回交易详情，并会执行，如果执行需要contract.test1.call()
     */
    function test1()public pure returns(string) {
        return "Hello Chain";
    }

    //contract.echo("zhubangbang")
    function echo(string s)public pure returns(string) {
        return s;
    }
}
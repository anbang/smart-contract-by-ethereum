pragma solidity ^0.4.16;
contract Test1 {
    uint[] data = [1,2,3,4,5];
    function f() view public returns (uint[]) {
        return data;//不能多类型
    }
}

contract Test2 {
    mapping(uint=>string) public students;//mapping类型返回；
    function Test2() public {
        students[0]="zhubangbang";
        students[1]="canonchain";
    }
    function stud(uint id) view public returns(string) {
        return students[id];//与上面pubilic students一样的
    }

    //第一种元组写法
    function fn() view public returns(uint ,bool,string) {
        return (101,false,"zhubangbang");//元组，返回多个值，并且值与值之间的类型可以不相同
    }
    //第二种元组写法，可以不用写return了；
    function studs() view public returns(string first,string sec) {
        first = students[0];
        sec = students[1];
        // return (first,sec);//return写不写都可以
    }
}

contract Test3{
    function g1() view public returns(uint ,bool,string) {
        var (x,y,z) = fn();
        return (x,y,z);
    }
    function fn() view public returns(uint ,bool,string) {
        return (101,false,"zhubangbang");
    }
    function g2() view public returns(uint ,bool) {
        var (x,y,) = fn();
        (x,y)= (1,true);
        return (x,y);
    }
    function g3() view public returns(uint ,uint) {
        var (x,y) = ( 1 , 2 );
        (x,y) = ( y , x );//可以交换，仅同类型的；
        return (x,y);
    }
}
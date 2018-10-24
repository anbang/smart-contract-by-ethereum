pragma solidity ^0.4.15;

contract C {
    
    // 1 == 1 seconds
    // 1 minutes == 60 seconds
    // 1 hours == 60 minutes
    // 1 days == 24 hours
    // 1 weeks == 7 days
    // 1 years == 365 days
    
    function test1() pure public returns (bool) {
        return 1 == 1 seconds;
    }

    function test2() pure public returns (bool) {
        return 1 minutes == 60 seconds;
    }
    
    function test3() pure public returns (bool) {
        return 1 hours == 60 minutes;
    }
    
    function test4() pure public returns (bool) {
        return 1 days == 24 hours;
    }
    
    function test5() pure public returns (bool) {
        return 1 weeks == 7 days;
    }
    
    function test6() pure public returns (bool) {
        return 1 years == 365 days;
    }
}
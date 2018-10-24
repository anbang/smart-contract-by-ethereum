pragma solidity ^0.4.16;
contract C {
    
    uint a = 1 ether;
    uint b = 10 ** 18 wei;
    uint c = 1000 finney;
    uint d = 1000000 szabo;
    
    function isTrueAEquleToB()public view returns (bool) {
        
        return a == b;
    }
    
    function isTrueAEquleToC() public view returns (bool) {
        
        return a == c;
    }
    
    function isTrueAEquleToD() public view returns (bool) {
        
        return a == d;
    }

}
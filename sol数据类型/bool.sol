pragma solidity ^0.4.15;

/* 
表达式
! && || == !=
*/
contract Bool{
    bool t = true;
    bool f = false;

    function A ()public view returns (bool){
        return !t;
    }
    function B ()public view returns (bool){
        return t&&f;
    }
    function C ()public view returns (bool){
        return t||f;
    }
    function D ()public view returns (bool){
        return t==f;
    }
    function E ()public view returns (bool){
        return t!=f;
    }
}
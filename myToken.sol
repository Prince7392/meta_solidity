// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public Token_name = "Priyanshu";
    string public Token_abbr = "Sh";
    uint public Total_supply = 0;

    // mapping variable here
    mapping(address => uint) public Balance;

    // mint function
    function mint(address _Addr, uint _Val) public {
        Total_supply += _Val;
        Balance[_Addr] += _Val;
    }

    // burn function
    function burn(address _Addr, uint _Val) public {
        if(Balance[_Addr] >= _Val) {
            Total_supply -= _Val;
            Balance[_Addr] -= _Val;
    }
    }
}

pragma solidity ^0.8.0;

import "./SafeMath.sol";

contract MyContract {
    uint256 public value;

    function calculate(uint _value1, uint _value2) public {
        value = SafeMath.div(_value1, _value2);
    }
}
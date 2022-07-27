pragma solidity ^0.5.1;
contract MyContract {
    string public constant value = "myValue";
    bool public myBool = true;
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 9999;
    uint8 public myUint8 = 8;


    function get() public view returns(string memory) {
        return value;
    }

    // function set(string memory _value ) public {
    //     value = _value;
    // }


}
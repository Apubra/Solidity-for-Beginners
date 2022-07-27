pragma solidity 0.5.1;

contract MyContract {
    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase(
        address indexed _seller,
        uint256 _amount
    );

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        sellToken();
    }

    function sellToken() public payable {
        balances[msg.sender] += 1;
        // That means transfer to which wallet (buyer wallet)
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}
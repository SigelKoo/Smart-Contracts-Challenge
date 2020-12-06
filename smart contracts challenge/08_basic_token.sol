pragma solidity >= 0.4.21 < 0.6.0;

contract basic_token {
    uint private tokenSupply;
    address private owner;
    mapping(address => uint) private account;

    constructor(uint _tokenSupply) public {
        tokenSupply = _tokenSupply;
        owner = msg.sender;
        account[msg.sender] = _tokenSupply;
    }

    function transfer(address _receiver, uint _amount) public {
        require(_receiver != address(0));
        require(_receiver != msg.sender);
        require(account[msg.sender] >= _amount);
        require(account[_receiver] + _amount > account[_receiver]);
        account[msg.sender] -= _amount;
        account[_receiver] += _amount;
    }

    function balanceOf() public view returns (uint) {
        return account[owner];
    }
}

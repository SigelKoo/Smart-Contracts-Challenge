pragma solidity >= 0.4.21 < 0.6.0;

contract fundraising {
    uint private fundraisingTarget;
    uint private fundraisingNow;
    uint private endTime;
    address private owner;
    mapping(address => uint256) private userFundraising;

    constructor(uint _fundraisingTarget, uint _timeLimit) public {
        fundraisingTarget = _fundraisingTarget;
        fundraisingNow = 0;
        endTime = block.timestamp + _timeLimit;
        owner = msg.sender;
    }

    function addMoney() public payable {
        require(endTime > block.timestamp);
        require(fundraisingNow < fundraisingTarget);
        require(msg.value > 0);
        fundraisingNow += msg.value;
        userFundraising[msg.sender] += msg.value;
    }

    function withdrawMoney() public payable {
        require(endTime < block.timestamp);
        require(fundraisingNow < fundraisingTarget);
        uint amount = userFundraising[msg.sender];
        fundraisingNow -= amount;
        userFundraising[msg.sender] = 0;
        address(uint160(msg.sender)).transfer(amount);
    }

    function completeFundraising() public payable {
        require(fundraisingNow >= fundraisingTarget);
        require(owner == msg.sender);
        address(uint160(owner)).transfer(address(uint160(this)).balance);
    }

}
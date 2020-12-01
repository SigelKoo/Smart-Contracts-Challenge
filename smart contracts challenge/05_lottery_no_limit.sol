pragma solidity >= 0.4.21 < 0.6.0;

contract lottery_no_limit {
    address private creater;
    address[] private participants;
    uint randNonce = 0;

    constructor() public {
        creater = msg.sender;
    }

    function join() public payable {
        require(msg.value == 0.1 ether);
        participants.push(msg.sender);
    }

    function selectWinner() public {
        require(msg.sender == creater);
        require(participants.length > 0);
        address winner = participants[randomNumber()];
        address thisAddr = address(this);
        address(uint160(winner)).transfer(address(uint160(thisAddr)).balance);
        delete participants;
    }

    function randomNumber() private returns(uint) {
        uint rand = uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % (participants.length);
        randNonce++;
        return rand;
    }
}

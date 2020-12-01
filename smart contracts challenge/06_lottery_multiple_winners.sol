pragma solidity >= 0.4.21 < 0.6.0;

contract lottery_multiple_winners {
    address owner;
    uint randNonce = 0;
    address[] winners;
    uint prize;

    enum LotteryState{ Accepting, Finished }
    LotteryState state;

    mapping(address => bool) gotReward;
    mapping(uint => address[]) choices;

    constructor() public {
        owner = msg.sender;
        state = LotteryState.Accepting;
    }

    function join(uint8 _chosenNumber) payable public {
        require(_chosenNumber > 0 && _chosenNumber <= 100);
        require(msg.value == 0.1 ether);
        require(state == LotteryState.Accepting);
        choices[_chosenNumber].push(msg.sender);
    }

    function selectWinners() public returns(uint) {
        require(msg.sender == owner);
        state = LotteryState.Finished;
        uint chosen = randomNumber(100) + 1;
        winners = choices[chosen];
        address thisAddr = address(this);
        prize = address(uint160(thisAddr)).balance / winners.length;
    }

    function withdrawReward() public {
        require(isWinner());
        require(gotReward[msg.sender] != true);
        gotReward[msg.sender] = true;
        msg.sender.transfer(prize);
    }

    function isWinner() public view returns(bool) {
        for(uint i = 0; i < winners.length; i++) {
            if(winners[i] == msg.sender) {
                return true;
            } else {
                return false;
            }
        }
    }

    function randomNumber(uint _limit) internal returns(uint) {
        uint rand = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, randNonce))) % _limit;
        randNonce++;
        return rand;
    }
}
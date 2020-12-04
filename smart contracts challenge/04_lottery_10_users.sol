pragma solidity >= 0.4.21 < 0.6.0;

contract lottery_10_users {
    address[10] private participants;
    uint8 participantsCount = 0;
    uint randNonce = 0;

    function join() public payable {
        require(msg.value == 0.1 ether);
        require(participantsCount < 10);
        require(joinedAlready(msg.sender) == false);
        participants[participantsCount] = msg.sender;
        participantsCount += 1;
        if(participantsCount == 10) {
            selectWinner();
        }
    }

    function joinedAlready(address _participant) private view returns (bool) {
        bool containsParticipant = false;
        for(uint i = 0; i < participants.length; i++) {
            if (_participant == participants[i]) {
                containsParticipant = true;
            }
        }
        return containsParticipant;
    }

    function selectWinner() private returns (address) {
        require(participantsCount == 10);
        address winner = participants[randomNumber()];
        address thisAddr = address(this);
        address(uint160(winner)).transfer(address(uint160(thisAddr)).balance);
        delete participants;
        participantsCount = 0;
        return winner;
    }

    function randomNumber() private returns(uint) {
        uint rand = uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % 10;
        randNonce++;
        return rand;
    }
}
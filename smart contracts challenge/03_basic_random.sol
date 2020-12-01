pragma solidity >= 0.4.21 < 0.6.0;

contract basic_random {
    uint private randNonce = 0;
    function getRandomNumber() public view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, randNonce))) % 99;
        randNonce ++;
        return rand;
    }
}
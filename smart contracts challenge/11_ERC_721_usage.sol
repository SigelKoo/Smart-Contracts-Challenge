pragma solidity >= 0.6.0 < 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract ERC_721_usage is ERC721 {
    constructor() ERC721("myToken", "mTX") public {}
} 
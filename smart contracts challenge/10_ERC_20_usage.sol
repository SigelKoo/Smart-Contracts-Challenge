pragma solidity >= 0.6.0 < 0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract ERC20_usage is ERC20 {

    constructor() public ERC20("myToken", "mTX") {
        _mint(msg.sender, 666666666666666);
    }
}
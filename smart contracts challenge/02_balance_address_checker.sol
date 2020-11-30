pragma solidity >= 0.4.21 < 0.6.0;

contract balance_address_checker {
    address private createrAddress;

    constructor() {
        createrAddress = msg.sender;
    }

    function getAddressOfContract() public view returns (address) {
        return this;
    }

    function getAddressOfContractCreater() public view returns (address) {
        return createrAddress;
    }

    function getAddressOfSender() public view returns (address) {
        return msg.sender;
    }

    function getBalanceOfContract() public view returns (uint) {
        return address(this).balance;
    }

    function getBalanceOfCreater() public view returns (uint) {
        require(msg.sender == createrAddress);
        return createrAddress.balance;
    }

    function getBalanceOfSender() public view returns (uint) {
        return msg.sender.balance;
    }
}
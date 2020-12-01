pragma solidity >= 0.4.21 <0.6.0;

contract say_hello {
    string private greeting;
    address private owner;

    constructor(string _firstGreeting) public {
        greeting = _firstGreeting;
        owner = msg.sender;
    }

    function sayHello() public view returns (string) {
        if (msg.sender == owner) {
            return "Hello Daddy";
        } else {
            return greeting;
        }
    }

    function changeGreeting(string _changeGreeting) public {
        require(msg.sender == owner);
        greeting = _changeGreeting;
    }
}
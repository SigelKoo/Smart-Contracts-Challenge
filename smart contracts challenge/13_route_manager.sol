pragma solidity >= 0.4.21 < 0.6.0;

contract route_manager {
    struct busStop {
        bytes32 id;
        bytes32 name;
        bytes32 latitude;
        bytes32 longitude;
    }

    address private owner;
    busStop[] public busStops;

    constructor() public {
        owner = msg.sender;
    }

    function addBusStop(bytes32 _id, bytes32 _name, bytes32 _latitude, bytes32 _longitude) public {
        require(owner == msg.sender);
        busStops.push(busStop(_id, _name, _latitude, _longitude));
    }

    function getBusStopCount() public view returns(uint) {
        return busStops.length;
    }

    function getBusStop(uint _i) public view returns (bytes32 _id, bytes32 _name, bytes32 _latitude, bytes32 _longitude) {
        return (busStops[_i].id, busStops[_i].name, busStops[_i].latitude, busStops[_i].longitude);
    }
}
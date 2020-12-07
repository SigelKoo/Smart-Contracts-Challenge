pragma solidity >= 0.4.21 < 0.6.0;

contract string_converter {
    function converter(string memory beforeTrans) public pure returns (bytes32 afterTrans) {
        bytes memory tempEmptyStringTest = bytes(beforeTrans);
        if(tempEmptyStringTest.length == 0) {
            return 0x0;
        }

        assembly {
            afterTrans := mload(add(beforeTrans, 32))
        }
    }

    /* 
    function toBytes(uint256 x) returns (bytes b) {
        b = new bytes(32);
        assembly { mstore(add(b, 32), x) }
    }
     */
}
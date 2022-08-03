// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Typecasting {
    function addressToUint(address _address) external pure returns(uint160) {
        return uint160(_address);
    }

    function addressToBytes(address _address) external pure returns(bytes20) {
        return bytes20(_address);
    }

    function addressToBytes4(address _address) external pure returns(bytes4) {
        return bytes4(bytes20(_address));
    }

    function addressToBytes32(address _address) external pure returns(bytes32) {
        return bytes32(bytes20(_address));
    }
}
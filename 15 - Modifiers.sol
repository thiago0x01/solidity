pragma solidity ^0.8.0;

contract modificadores {
    uint supply = 10;
    address admin = msg.sender;

    function getSupply() external view returns(uint) {
        return supply;
    }

    function mint(uint _value) external onlyAdmin() onlyValue(_value) {
        supply += _value;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin");
        _;
    }

    modifier onlyValue(uint _value) {
        require(_value == 10, "Only 10");
        _;
    }
}

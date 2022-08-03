pragma solidity ^0.8.0;

contract A {
    // bool public fallbackCalled;

    // fallback() external payable {
    //     fallbackCalled = true;
    // }
    uint public a;

    function setVar(uint _var) external {
        a = _var;
    }
}

contract B {
    // function testCall(address _contract, uint _var) external payable {
    //     (bool success, ) = _contract.call("");
    //     require(success, "Call failed");
    // }

    // receive() external payable {}

    // function sendEther() external {
    //     (bool success, ) = msg.sender.call{value: 1 ether}("");
    // }
    uint public a;

    function setVar(address _contract, uint _var) external {
        (bool success, ) = _contract.delegatecall(abi.encodeWithSignature("setVar(address,uint256)", _contract, _var));
        require(success, "delegateCall failed");
    }
}

contract C {
    uint public a;

    function setVar(address _contract, uint _var) external {
        a = 2 * _var;
    }
}
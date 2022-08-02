pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";

// import "./IERC20Mine.sol";

// contract A {
//     function retorna10() external pure returns(uint256) {
//         return 10;
//     }
// }

// contract B {
//     function retorna10() external pure returns(uint256) {
//         return 20;
//     }
// }

// contract C {
//     function chamaOutro(address _contrato) external returns(uint256) {
//         return A(_contrato).retorna10();
//     }
// }

contract A {
    // address _contract;
    IERC20 myInstance;

    constructor(address contracto) {
        // _contract = contracto;
        myInstance = IERC20(contracto);
    }

    // function getSaldo(address _contrato) external view returns(uint256) {
    //     return IERC20Mine(_contrato).balanceOf(msg.sender);
    // }

    function getSaldo() external view returns (uint256) {
        return myInstance.balanceOf(msg.sender);
    }

    function supply() external view returns (uint256) {
        return myInstance.totalSupply();
    }
}

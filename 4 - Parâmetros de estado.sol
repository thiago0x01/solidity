pragma solidity ^0.8.0;

// Padrao
// View
// Pure

contract parametros {
    uint256 numero = 10;

    // Padrão
    function qualNumero() external view returns (uint256) {
        return numero;
    }

    // View
    function qualNumeroView() external view returns (uint256) {
        return numero;
    }

    // Pure
    function calcula(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }
}

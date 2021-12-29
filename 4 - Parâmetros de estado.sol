pragma solidity ^0.8.0;

// Padrao
// View
// Pure

contract parametros {
    uint numero = 10;

    // Padrão
    function qualNumero() external returns(uint) {
        return numero;
    }

    // View
    function qualNumeroView() external view returns(uint) {
        return numero;
    }

    // Pure
    function calcula(uint a, uint b) external pure returns(uint) {
        return a + b;
    }
}
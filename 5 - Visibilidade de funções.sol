pragma solidity ^0.8.0;

// External
// Internal
// Public
// Private

contract visibilidade {
    // Acessivel de todas as formas, em programas, API, contratos herdados...
    function qualNomeP() public view returns (string memory) {
        return "public";
    }

    // Somente de fora podera ser acessada, o próprio contrato não acessa
    function qualNomeE() external view returns (string memory) {
        return "external";
    }

    // Somente o próprio contrato acessa
    function qualNomePri() private view returns (string memory) {
        return "private";
    }

    // O próprio contrato e derivados acessa
    function qualNomeIn() internal view returns (string memory) {
        return "internal";
    }
}

// Herança
contract B is visibilidade {
    function haa() external view returns (string memory) {
        return qualNomeIn();
    }
}

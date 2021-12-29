pragma solidity ^0.8.0;

// Internal
// Private
// Public

contract visibilidade {
    string public nome;

    function salvaNome(string memory _nome) external {
        nome = _nome;
    }

    function qualNome() internal view returns (string memory) {
        return nome;
    }
}

contract outro is visibilidade {
    function hoo() external view returns (string memory) {
        return qualNome();
    }
}

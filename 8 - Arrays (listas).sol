pragma solidity 0.8.11;

// Create
// Read
// Update
// Delete

// Arrays de Arrays

contract listas {
    string[] nomes;

    function salvaNomes(string memory _nome) external {
        nomes.push(_nome);
    }

    function lerNome(uint256 _posicao) external view returns (string memory) {
        return nomes[_posicao];
    }

    function atualizaNome(uint256 _posicao, string memory _novoNome) external {
        nomes[_posicao] = _novoNome;
    }

    function deletaNome(uint256 _posicao) external {
        delete nomes[_posicao];
    }
}

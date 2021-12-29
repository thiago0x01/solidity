pragma solidity ^0.8.0;

// Parametros
// Visibilidade
// Estado
// Payable
// Return

contract funcoes {
    // Função soma recebe dois parametros inteiros, ela pode ser chamada fora do contrato (external), ela é pure (Não modifica nada na blockchain) e retorna um inteiro
    function soma(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a + _b;
    }

    string nome = "Thiago";

    // Função qualNome apenas mostra um dado (view) e retorna uma string em memória
    function qualNome() external view returns (string memory) {
        return nome;
    }

    mapping(address => uint256) saldos;

    // Função investir é publica (public) e pagavel (payable)
    function investir() public payable returns (uint256) {
        saldos[msg.sender] += msg.value;
        return saldos[msg.sender];
    }
}

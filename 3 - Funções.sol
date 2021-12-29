pragma solidity ^0.8.0;

// Parametros
// Visibilidade
// Estado
// Payable
// Return

contract funcoes {
    // Função soma recebe dois parametros inteiros, ela pode ser chamada fora do contrato (external), ela é pure (Não modifica nada na blockchain) e retorna um inteiro
    function soma(uint _a, uint _b) external pure returns(uint){
        return _a + _b;
    }

    string nome = "Thiago";

    // Função qualNome apenas mostra um dado (view) e retorna uma string em memória
    function qualNome() external view returns(string memory) {
        return nome;
    }

    mapping(address => uint) saldos;

    // Função investir é publica (public) e pagavel (payable)
    function investir() public payable returns(uint) {
        saldos[msg.sender] += msg.value;
        return saldos[msg.sender];
    }
}
pragma solidity ^0.8.0;

contract meuContrato {
    // Variáveis simples
    // Não recebe numeros negativos
    uint256 minhaidade = 24;
    // Limita até 256 bytes
    uint256 ate256;

    string nome = "Thiago";
    // Carteira
    address carteira = msg.sender;
    bool estaAtivo = false;

    // Variavel onde recebe um dado que pode ter até 32 bytes (Serve para deixar mais performático, limitando)
    bytes32 data;

    // Listas
    uint256[] numeros;
    string[] clientes;
    address[] carteiras;

    // Cria um objeto de chave e valor, onde a chave é o address que recebe o saldos
    mapping(address => uint256) saldos;

    // "Tipando Usuario"
    struct Usuario {
        uint256 id;
        string name;
        address endereco_carteira;
    }

    // "Cores enumeradas"
    enum Cores {
        VERMELHO,
        PRETO,
        VERDE
    }

    function usandoVariaveis() external {
        saldos.push(1);
        estaAtivo = true;

        // Usabilidade do mapping
        saldos[msg.sender] = 10;
    }
}

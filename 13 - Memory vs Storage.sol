pragma solidity ^0.8.0;

contract Armazenamento {
    string qualquerTexto;

    // Quando passar returns com string, ele exige que use memory
    function lerNumero() public returns (string memory) {
        return qualquerTexto;
    }

    // memory é uma variável temporária e calldata também, mas não pode ser alterada dentro da função
    function guardaNumero(string calldata _texto)
        public
        returns (string memory)
    {
        qualquerTexto = _texto;
        // _texto = "outra coisa";
        // storage armazena a variável mesmo que ela esteja dentro da função
    }
}

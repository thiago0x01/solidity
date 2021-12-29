pragma solidity 0.8.11;

// Verifica se endereço está em uma lista

contract controladores {
    address[] depositos;

    function salvaEnderecos(address _endereco) external {
        depositos.push(_endereco);
    }

    function verificaEndereco(address _endereco) external view returns (bool) {
        for (uint256 i; i < depositos.length; i++) {
            if (depositos[i] == _endereco) {
                return true;
            }
        }

        return false;
    }
}

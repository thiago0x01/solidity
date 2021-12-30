pragma solidity 0.8.11;

contract Categorias {
    enum ESTADO {
        ATIVO,
        INATIVO,
        CANCELADO,
        CADASTRADO
    }

    mapping(address => ESTADO) usuarios;

    function addUser() external {
        usuarios[msg.sender] = ESTADO.CADASTRADO;
    }

    function getUser() external view returns (ESTADO) {
        return usuarios[msg.sender];
    }

    function calcula(uint256 _a, uint256 _b) external returns (uint256) {
        require(
            usuarios[msg.sender] == ESTADO.CADASTRADO,
            "Usuario nao cadastrado"
        );

        uint256 resultado = _a + _b;
        usuarios[msg.sender] = ESTADO.ATIVO;
        return resultado;
    }
}

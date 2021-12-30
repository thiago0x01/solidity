pragma solidity 0.8.11;

contract Eventos {
    event Transferencia(
        address indexed _deQuem,
        address indexed _paraOnde,
        uint256 _quantidade
    );

    function transfer(address _praQuem, uint256 _quantidade) public {
        // Codigo das verificações

        emit Transferencia(msg.sender, _praQuem, _quantidade);
    }
}

pragma solidity 0.8.11;

contract marketplace {
    struct Usuario {
        address wallet;
        uint256 id;
        string name;
    }

    Usuario[] usuarios;

    function addUsuarioImplicito(uint256 _id, string memory _name) external {
        Usuario memory usuario1 = Usuario(msg.sender, _id, _name);
        usuarios.push(usuario1);
    }

    function addUsuarioExplicito(uint256 _id, string memory _name) external {
        Usuario memory usuario2 = Usuario({
            wallet: msg.sender,
            id: _id,
            name: _name
        });
        usuarios.push(usuario2);
    }

    // Economiza Gas
    function addEcoUsuarioExplicito(uint256 _id, string memory _name) external {
        usuarios.push(Usuario(msg.sender, _id, _name));
    }

    function name(uint256 _position) external view returns (string memory) {
        return usuarios[_position].name;
    }
}

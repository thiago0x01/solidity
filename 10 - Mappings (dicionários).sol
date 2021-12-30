pragma solidity ^0.8.11;

contract mappings {
    mapping(address => uint256) saldos;
    mapping(address => uint256[]) pontuacao;

    function deposit() external payable {
        saldos[msg.sender] += msg.value;
    }

    function balanceOf() external view returns (uint256) {
        return saldos[msg.sender];
    }

    function salvaPontuacao(uint256 _pontos) external {
        pontuacao[msg.sender].push(_pontos);
    }

    function premioEmTokens() external view returns (uint256) {
        uint256 somaPontuacao;

        for (uint256 i; i < pontuacao[msg.sender].length; i++) {
            somaPontuacao += pontuacao[msg.sender][i];
        }

        return somaPontuacao;
    }
}

pragma solidity ^0.8.0;

contract variaveis {
    uint public id;
    address public endereco_miner;
    uint public dificuldade;
    uint public limit;
    uint public numero_bloco;
    uint public timestamp;

    address public quem_chamou;
    uint public valor;

    // uint public precoGas;
    address public de_onde_originou;

    constructor() payable {
        id = block.chainid;
        endereco_miner = block.coinbase;
        dificuldade = block.difficulty;
        limit = block.gaslimit; 
        numero_bloco = block.number;
        timestamp = block.timestamp;

        quem_chamou = msg.sender;
        valor = msg.value;

        // precoGas = tx.gasprice;
        de_onde_originou = tx.origin;
    }

    //DIFERENÇA ENTRE tx.origin e msg.sender:
    // Alice => Smart Contract A           => Smart Contract B                     => Smart Contract C
    //          tx.origin = Alice             tx.origin = Alice                       tx.origin = Alice
    //          msg.sender = Alice            msg.sender = Smart Contract A           msg.sender = Smart Contract B
}
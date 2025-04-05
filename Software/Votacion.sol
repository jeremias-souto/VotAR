// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.1;

contract Votacion {

    uint public numVotosRojo;
    uint public numVotosAzul;
    address[] private listaVotantes;

    constructor () {
        numVotosRojo = 0;
        numVotosAzul = 0;
    }

    function votarRojo() public {
        require(buscarVotante(msg.sender) == false);
        agregarVotante(msg.sender);
        numVotosRojo++;
    }

    function votarAzul() public {
        require(buscarVotante(msg.sender) == false);
        agregarVotante(msg.sender);
        numVotosAzul++;
    }

    function agregarVotante(address votante) private {
        listaVotantes.push(votante);
    }

    function buscarVotante(address votante) private view returns(bool) {
        for (uint i = 0; i < listaVotantes.length; i++){
            if (listaVotantes[i] == votante){
                return true;
            }
        }
        return false;
    }
}
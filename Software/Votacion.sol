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

    /*
     * @dev Esta funcion simplemente vota al partido rojo (+1 voto)
     */
    function votarRojo() public {
        require(buscarVotante(msg.sender) == false);
        agregarVotante(msg.sender);
        numVotosRojo++;
    }

    /*
     * @dev Esta funcion simplemente vota al partido azul (+1 voto)
     */
    function votarAzul() public {
        require(buscarVotante(msg.sender) == false);
        agregarVotante(msg.sender);
        numVotosAzul++;
    }

    /*
     * @dev Agrega un votante a la lista de votantes
     * @param Direccion de wallet del votante
     */
    function agregarVotante(address votante) private {
        listaVotantes.push(votante);
    }

    /*
     * @dev Verifica si el votante esta en la lista de votantes
     * @param Direccion de wallet del votante
     */
    function buscarVotante(address votante) private view returns(bool) {
        for (uint i = 0; i < listaVotantes.length; i++){
            if (listaVotantes[i] == votante){
                return true;
            }
        }
        return false;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Import the openzepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// NFTee is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin
contract NFTee is ERC721 {

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        // mint an NFT to yourself
        for (uint i = 0; i <= 5; i++) {
             _mint(msg.sender, i);
        }
    }
}
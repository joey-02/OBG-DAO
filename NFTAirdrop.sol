
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTAirdrop is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("OBGDAO", "OBG") {
        console.log("Contract has been deployed!");
    }

    // Airdrop NFTs
    function airdropNfts(address[] calldata wAddresses) public onlyOwner {

        for (uint i = 0; i < wAddresses.length; i++) {
            _mintSingleNFT(wAddresses[i]);
        }
    }
    
    function _mintSingleNFT(address wAddress) private {
        uint newTokenID = _tokenIds.current();
        _safeMint(wAddress, newTokenID);
        _tokenIds.increment();
        _setTokenURI(newTokenID, "https://gateway.pinata.cloud/ipfs/QmZrGYRxGWuKjDGQJQjWV6TpLaaKnS5uXYAZYZTCTaeqss");
    }

     // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
}
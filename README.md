# OBG DAO
[NFT pass/frontend will be deployed Week1 of winter term, links will be updated here once done so!]

This repo contains the contracts and links for the Oregon Blockchain Group governance platform. This project is intended to create a wallet-based voting system for fund pitches, ops and finance related decisions, and anything else! The frontend/UI will use [snapshot](https://snapshot.org/#/) while the backend for distributing tokens/votes will be a custom contract deployed on mainnet. 

This was my first time creating and deploying contracts to a blockchain. I was able to do this by following the [Alchemy tutorial](https://docs.alchemy.com/docs/how-to-create-an-nft). In the future, we can deploy the contracts directly from our local node instead of using scripts/rpc nodes. 

## OBG Guide for (Re)deployment and joining the DAO
https://docs.google.com/document/d/1whbmsYaZJKG696K63tq5OoI5cX1bWelITwdq4N0rDVE/edit 
The project folder is located in the OBG management drive. 

## Future work
1. Upgrade to erc 4907 to recall votes instead of minting new votes every year
2. Instead of using IPFS, host image on-chain like nounsdao! Could use something like [pixelations](https://pixelations.xyz/) to encode the image on-chain automatically
3. Upgrade/migrate to [snapshot X](https://docs.snapshotx.xyz/) so proposals can have executable code. This will let us replace our director of fund as we won't need an intermediary to execute trades 



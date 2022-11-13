# OBG-DAO

This repo contains the contracts and links for the Oregon Blockchain Group governance platform. This project is intended to create a wallet-based voting system for fund pitches, ops and finance related decisions, and anything else! The frontend/UI will use [snapshot](https://snapshot.org/#/) while the backend for distributing tokens/votes will be a custom contract deployed on mainnet. 

This was my first time creating and deploying contracts to a blockchain. I was able to do this by following the [Alchemy tutorial](https://docs.alchemy.com/docs/how-to-create-an-nft). In the future, we can deploy the contracts directly from our local node instead of using scripts/rpc nodes. 

## How to participate in Governance
1. Create metamask
2. Enter [snapshot](https://snapshot.org/#/) and connect wallet at the top right
3. Join the OBG space by searching for us at the top
4. Publish and vote on proposals! 

## How to setup (Guide for OBG Management)
1. Collect OBG member wallet addresses
2. Mint and distribute tokens to wallets (airdrop addresses are kept in the run.js file)
3. Create space on snapshot, add strategy for token voting
4. Propose and vote!

## Future work
1. Add snapshot X plugin so proposals can have executable code. This will let us replace our director of fund! 
2. Upgrade to erc 4907 to recall votes instead of minting new votes every year



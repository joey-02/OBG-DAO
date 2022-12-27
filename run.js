const { ethers } = require("hardhat");
const hre = require("hardhat");

async function main() {

  // Define a list of wallets to airdrop NFTs
  const airdropAddresses = [
    '0x2946e8431411a3Fc00aEB67Ac3c3A99DC07D3f5E',
    '0x6594FB463bfaafc4a6CaB444D2aFe99Fc2754676',
    '0x799E1465A8C9eE851F6D2c29DcB7bC1DE7780850',
    '0x97b5D43e845a0F39A1d7a4E4DB32429Bcc594903',
    '0xA6aB80ecB16F16aa964c1b5b5B3B6FFf99426fEd',
  ];

  const factory = await hre.ethers.getContractFactory("NFTAirdrop");
  const [owner] = await hre.ethers.getSigners();
  const contract = await factory.deploy();

  await contract.deployed();
  console.log("Contract deployed to: ", contract.address);
  console.log("Contract deployed by (Owner): ", owner.address, "\n");

  let txn;
  txn = await contract.airdropNfts(airdropAddresses);
  await txn.wait();
  console.log("NFTs airdropped successfully!");

  console.log("\nCurrent NFT balances:")
  for (let i = 0; i < airdropAddresses.length; i++) {
    let bal = await contract.balanceOf(airdropAddresses[i]);
    console.log(`${i + 1}. ${airdropAddresses[i]}: ${bal}`);
  }

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
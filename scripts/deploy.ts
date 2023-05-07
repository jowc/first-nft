import { ethers } from "hardhat";

async function main() {
  const contract = await ethers.getContractFactory("NFTee")
  const contractDeployed = await contract.deploy("Uche", "uche")

  await contractDeployed.deployed()

  console.log(`deployed to ${contractDeployed.address}`)
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

const hre = require("hardhat");

async function main() { 
  const EventTest = await hre.ethers.getContractFactory("ItemCollection");
  const eventTest = await EventTest.deploy();

  await eventTest.deployed();

  eventTest.on("Buy", (owner, item) => {
    console.log(`New item bought: ${owner} ${item}`);
  })

  eventTest.on("Sell", (owner, item) => {
    console.log(`New item sold: ${owner} ${item}`);
  })

  eventTest.on("Gift", (from, to, item) => {
    console.log(`New item gifted: ${from} ${to} ${item}`);
  })

  console.log(
    `Contract deployed to ${eventTest.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

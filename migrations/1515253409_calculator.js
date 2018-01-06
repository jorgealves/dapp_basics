let Calculator = artifacts.require("./Calculator.sol");
module.exports = function (deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(Calculator, 10);
};
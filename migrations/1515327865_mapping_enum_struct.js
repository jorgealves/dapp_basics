let MappingEnumStruct = artifacts.require("./MappingEnumStruct.sol");
module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(MappingEnumStruct);
};

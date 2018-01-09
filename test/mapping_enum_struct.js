let MappingEnumStruct = artifacts.require("./MappingEnumStruct.sol");
contract('MappingEnumStruct', function (accounts) {
  it("should assert true", function (done) {
    var mapping_enum_struct;
    return MappingEnumStruct.deployed().then((instance) => {
      mapping_enum_struct = instance;
      mapping_enum_struct.addCapital("Spain", "Madrid");
      mapping_enum_struct.addCapital("Faro", "Dengun");
      mapping_enum_struct.addCapital("Olhão", "Jojoca");
    }).then(function () {
      return mapping_enum_struct.getCapital.call("Faro");
    }).then(function (result) {
      assert.isTrue(result === 'Dengun')
    });
    done();
  });
});
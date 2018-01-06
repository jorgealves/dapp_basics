var Calculator = artifacts.require("./Calculator.sol");
contract('Calculator', function (accounts) {
  it("should assert true", function (done) {
    var calculator;
    Calculator.deployed().then((instance) => {
      calculator = instance;
      return instance.getResult.call();
    }).then((result) => {
      assert.equal(result.valueOf(), 10, "shit");
      calculator.addToNumber(10);
      calculator.subtractFromNumber(5);
      return calculator.getResult.call();
    }).then((result)=>{
      assert.equal(result.valueOf(),15,"error");
    });
    done();
  });
});
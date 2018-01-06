pragma solidity ^0.4.4;

// contract definition
contract Calculator {

  // Properties
  uint result;

  // Contract Constructor
  function Calculator(uint initial) public {
    // constructor
    result = initial;
  }

  // Contract function with return value definition
  function getResult() public view returns (uint) {
    return result;
  }

  // Contract function without return value definition
  function addToNumber(uint num) public {
    result = result + num;
  }

  function subtractFromNumber(uint num) public {
    result = result - num;
  }
 
  // function multiplyWithNumber(uint num) public {
    // result = result * num;
  // }

  // function divideByNumber(uint num) public {
    // result = result / num;
  // }
}

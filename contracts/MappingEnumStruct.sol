pragma solidity ^0.4.4;

contract MappingEnumStruct {
  
  // Storage
  mapping(string => string) capitals;
  
  function addCapital(string country, string capital) public {
    capitals[country] = capital;
  }

  function getCapital(string country) public view returns (string) {
    return capitals[country];
  }

  function removeCapital(string country) public {
   delete(capitals[country]);
  }

}

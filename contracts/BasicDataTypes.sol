pragma solidity ^0.4.4;

contract BasicDataTypes {
  uint8 x8 = 255;

  address owner;
  uint ownerInitialBalance;

  function BasicDataTypes(address addr) public {

    owner = addr;
    ownerInitialBalance = owner.balance;
    int x256; //32 byte integer signed
    x256 = x8; //compilation successfull
    //x8 = x256 //Fails compilation
    x8 = uint8(x256);
    // bool flag = true;
    
    // if (1){} fails compilation
    // if(1>0 && flag) { 
      // var deduced = x8;
      //deduced = x256;
    // } //works
  }
}
